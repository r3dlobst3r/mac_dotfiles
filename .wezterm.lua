local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font({
	family = "JetBrainsMono Nerd Font",
	weight = "DemiBold",
})

config.font_size = 16

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.custom_block_glyphs = true
config.anti_alias_custom_block_glyphs = true

config.color_scheme = "Catppuccin Mocha"

config.window_background_opacity = 0.85
config.macos_window_background_blur = 10

return config
