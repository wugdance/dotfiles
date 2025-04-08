local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "rose-pine"

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.font_size = 16.0

return config
