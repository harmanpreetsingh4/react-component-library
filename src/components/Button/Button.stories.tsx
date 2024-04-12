import React from "react";
import { type Story } from "@storybook/react";
import Button from "./Button";

export default {
  title: "Button",
  component: Button,
} as const;

const Template: Story<typeof Button> = (args) => <Button {...args} />;

// ------------Default Button----------------//
export const DefaultTheme = Template.bind({});
DefaultTheme.args = {
  text: "Default Button",
};

// ------------Disables Button---------------//
export const Disabled = Template.bind({});
Disabled.args = {
  text: "Disabled",
  disabled: true,
};
