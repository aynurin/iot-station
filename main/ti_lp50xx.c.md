```c
// SPDX-License-Identifier: GPL-2.0
/* TI LP50XX LED chip family driver
 * Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com/
 */

#include <linux/gpio/consumer.h>
#include <linux/i2c.h>
#include <linux/init.h>
#include <linux/leds.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/of.h>
#include <linux/of_gpio.h>
#include <linux/regmap.h>
#include <linux/regulator/consumer.h>
#include <linux/slab.h>
#include <uapi/linux/uleds.h>

#include "PTLP5018REGS.h"

static uint32_t color_show(struct lp50xx_led *led)
{
	struct lp50xx *priv = led->priv;
	unsigned int red_val, green_val, blue_val;
	u8 red_reg, green_reg, blue_reg;
	u32 mix_value = 0;
	u8 led_offset;
	int ret;

	if (led->ctrl_bank_enabled) {
		red_reg = priv->bank_mix_reg;
		green_reg = priv->bank_mix_reg + 1;
		blue_reg = priv->bank_mix_reg + 2;
	} else {
		led_offset = (led->led_number * 3);
		red_reg = priv->mix_out0_reg + led_offset;
		green_reg = priv->mix_out0_reg + led_offset + 1;
		blue_reg = priv->mix_out0_reg + led_offset + 2;
	}

	ret = regmap_read(priv->regmap, red_reg, &red_val);
	if (ret) {
		// dev_err(&priv->client->dev, "Cannot read LED value\n");
		// goto out;
		return -ret;
	}

	ret = regmap_read(priv->regmap, green_reg, &green_val);
	if (ret) {
		// dev_err(&priv->client->dev, "Cannot read LED value\n");
		// goto out;
		return -ret;
	}

	ret = regmap_read(priv->regmap, blue_reg, &blue_val);
	if (ret) {
		// dev_err(&priv->client->dev, "Cannot read LED value\n");
		// goto out;
		return -ret;
	}

	mix_value = (red_val << 16 | green_val << 8 | blue_val);

out:
	return mix_value;
}

static ssize_t color_store(struct lp50xx_led *led,
				struct device_attribute *attr,
				const char *buf, size_t size)
{
	struct lp50xx *priv = led->priv;
	u8 led_offset;
	u8 red_reg, green_reg, blue_reg;
	u8 red_val, green_val, blue_val;
	int ret;

	unsigned long mix_value = strtoul(buf, 0, 16);
	if (ret)
		return ret;

	if (led->ctrl_bank_enabled) {
		red_reg = priv->bank_mix_reg;
		green_reg = priv->bank_mix_reg + 1;
		blue_reg = priv->bank_mix_reg + 2;
	} else {
		led_offset = (led->led_number * 3);
		red_reg = priv->mix_out0_reg + led_offset;
		green_reg = priv->mix_out0_reg + led_offset + 1;
		blue_reg = priv->mix_out0_reg + led_offset + 2;
	}

	red_val = (mix_value & 0xff0000) >> 16;
	green_val = (mix_value & 0xff00) >> 8;
	blue_val = (mix_value & 0xff);

	ret = regmap_write(priv->regmap, red_reg, red_val);
	if (ret) {
		// dev_err(&priv->client->dev, "Cannot write LED value\n");
		// goto out;
		return -ret;
	}

	ret = regmap_write(priv->regmap, green_reg, green_val);
	if (ret) {
		// dev_err(&priv->client->dev, "Cannot write LED value\n");
		// goto out;
		return -ret;
	}

	ret = regmap_write(priv->regmap, blue_reg, blue_val);
	if (ret) {
		// dev_err(&priv->client->dev, "Cannot write LED value\n");
		// goto out;
		return -ret;
	}
out:
	return size;
}

static DEVICE_ATTR_RW(color);

static struct attribute *lp50xx_led_color_attrs[] = {
	&dev_attr_color.attr,
	NULL
};
ATTRIBUTE_GROUPS(lp50xx_led_color);

static int lp50xx_brightness_set(struct lp50xx_led *led,
				enum led_brightness brt_val)
{
	int ret = 0;
	u8 reg_val;

	if (led->ctrl_bank_enabled)
		reg_val = led->priv->bank_brt_reg;
	else
		reg_val = led->priv->led_brightness0_reg + led->led_number;

	ret = regmap_write(led->priv->regmap, reg_val, brt_val);

	return ret;
}

static enum led_brightness lp50xx_brightness_get(struct lp50xx_led *led)
{
	unsigned int brt_val;
	u8 reg_val;
	int ret;

	if (led->ctrl_bank_enabled)
		reg_val = led->priv->bank_brt_reg;
	else
		reg_val = led->priv->led_brightness0_reg + led->led_number;

	ret = regmap_read(led->priv->regmap, reg_val, &brt_val);

	return brt_val;
}

static void lp50xx_set_led_values(struct lp50xx *priv)
{
	if (priv->model_id == LP5018 || priv->model_id == LP5024) {
		priv->led_brightness0_reg = LP5024_LED0_BRT;
		priv->mix_out0_reg = LP5024_OUT0_CLR;
		priv->bank_brt_reg = LP5024_BNK_BRT;
		priv->bank_mix_reg = LP5024_BNKA_CLR;
		priv->reset_reg = LP5024_RESET;
	} else {
		priv->led_brightness0_reg = LP5036_LED0_BRT;
		priv->mix_out0_reg = LP5036_OUT0_CLR;
		priv->bank_brt_reg = LP5036_BNK_BRT;
		priv->bank_mix_reg = LP5036_BNKA_CLR;
		priv->reset_reg = LP5036_RESET;
	}
}

static int lp50xx_set_banks(struct lp50xx *priv)
{
	struct lp50xx_led *led;
	u8 led_ctrl_enable = 0;
	u8 led1_ctrl_enable = 0;
	u8 ctrl_ext = 0;
	int i, j;
	int ret;

	for (i = 0; i <= priv->num_of_leds; i++) {
		led = &priv->leds[i];
		if (!led->ctrl_bank_enabled)
			continue;

		for (j = 0; j <= priv->max_leds - 1; j++) {
			if (led->led_strings[j]	> (LP5024_MAX_LED_STRINGS - 1)) {
				ctrl_ext = led->led_strings[j] - LP5024_MAX_LED_STRINGS;
				led1_ctrl_enable |= (1 << ctrl_ext);
			} else {
				led_ctrl_enable |= (1 << led->led_strings[j]);
			}
		}
	}

	ret = regmap_write(priv->regmap, LP50XX_LED_CFG0, led_ctrl_enable);

	if (led1_ctrl_enable)
		ret = regmap_write(priv->regmap, LP5036_LED_CFG1,
				   led1_ctrl_enable);

	return ret;
}

static int lp50xx_init(struct lp50xx *priv)
{
	int ret;

	lp50xx_set_led_values(priv);

	if (priv->enable_gpio) {
		gpiod_direction_output(priv->enable_gpio, 1);
	} else {
		ret = regmap_write(priv->regmap, priv->reset_reg,
				   LP50XX_SW_RESET);
		if (ret) {
			// dev_err(&priv->client->dev,
			// 	"Cannot reset the device\n");
			// goto out;
			return -ret;
		}
	}

	ret = lp50xx_set_banks(priv);
	if (ret) {
		// dev_err(&priv->client->dev, "Cannot set the banks\n");
		// goto out;
		return -ret;
	}

	ret = regmap_write(priv->regmap, LP50XX_DEV_CFG0, LP50XX_CHIP_EN);
	if (ret)
		// dev_err(&priv->client->dev, "Cannot write ctrl enable\n");
		return -ret;

out:
	return ret;
}

static int lp50xx_probe_dt(struct lp50xx *priv)
{
	struct fwnode_handle *child = NULL;
	struct lp50xx_led *led;
	int control_bank_defined = 0;
	const char *name;
	int led_number;
	size_t i = 0;
	int ret;

	priv->enable_gpio = devm_gpiod_get_optional(&priv->client->dev,
						   "enable", GPIOD_OUT_LOW);
	if (IS_ERR(priv->enable_gpio)) {
		ret = PTR_ERR(priv->enable_gpio);
		dev_err(&priv->client->dev, "Failed to get enable gpio: %d\n",
			ret);
		return ret;
	}

	priv->regulator = devm_regulator_get(&priv->client->dev, "vled");
	if (IS_ERR(priv->regulator))
		priv->regulator = NULL;

	if (priv->model_id == LP5018)
		priv->max_leds = LP5018_MAX_LED_STRINGS;
	else if (priv->model_id == LP5024)
		priv->max_leds = LP5024_MAX_LED_STRINGS;
	else if (priv->model_id == LP5030)
		priv->max_leds = LP5030_MAX_LED_STRINGS;
	else
		priv->max_leds = LP5036_MAX_LED_STRINGS;

	for (uint8_t i = 0; i < priv->max_leds; i++) {
		led = &priv->leds[i];

		if (fwnode_property_present(child, "ti,led-bank")) {
			led->ctrl_bank_enabled = 1;
			if (!control_bank_defined)
				control_bank_defined = 1;
			else {
				dev_err(&priv->client->dev,
					"ti,led-bank defined twice\n");
				fwnode_handle_put(child);
				goto child_out;
			}
		} else {
			led->ctrl_bank_enabled = 0;
		}

		if (led->ctrl_bank_enabled) {
			ret = fwnode_property_read_u32_array(child,
							     "ti,led-bank",
							     NULL, 0);
			ret = fwnode_property_read_u32_array(child,
							     "ti,led-bank",
							     led->led_strings,
							     ret);

			led->led_number = led->led_strings[0];

		} else {
			ret = fwnode_property_read_u32(child, "ti,led-module",
					       &led_number);

			led->led_number = led_number;
		}
		if (ret) {
			dev_err(&priv->client->dev,
				"led sourcing property missing\n");
			fwnode_handle_put(child);
			goto child_out;
		}

		if (led_number > priv->max_leds) {
			dev_err(&priv->client->dev,
				"led-sources property is invalid\n");
			ret = -EINVAL;
			fwnode_handle_put(child);
			goto child_out;
		}

		ret = fwnode_property_read_string(child, "label", &name);
		if (ret)
			snprintf(led->label, sizeof(led->label),
				"%s::", priv->client->name);
		else
			snprintf(led->label, sizeof(led->label),
				 "%s:%s", priv->client->name, name);

		fwnode_property_read_string(child, "linux,default-trigger",
				    &led->led_dev.default_trigger);

		led->priv = priv;
		led->led_dev.name = led->label;
		led->led_dev.brightness_set_blocking = lp50xx_brightness_set;
		led->led_dev.brightness_get = lp50xx_brightness_get;
		led->led_dev.groups = lp50xx_led_color_groups;

		ret = devm_led_classdev_register(&priv->client->dev,
						 &led->led_dev);
		if (ret) {
			dev_err(&priv->client->dev, "led register err: %d\n",
				ret);
			fwnode_handle_put(child);
			goto child_out;
		}
		i++;
	}
	priv->num_of_leds = i;

child_out:
	return ret;
}

```