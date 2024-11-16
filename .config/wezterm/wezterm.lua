local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("FuraMono Nerd Font")

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

-- config.color_scheme = "rose-pine"
-- config.color_scheme = "Grayscale Dark (base16)"
config.color_scheme = "GitHub Dark"

config.window_decorations = "RESIZE"

config.font_size = 20
config.line_height = 1

return config
