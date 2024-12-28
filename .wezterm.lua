local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	font = wezterm.font({
		family = "JetBrainsMono Nerd Font",
		weight = "DemiBold",
	}),

	font_size = 16,

	enable_tab_bar = false,

	window_decorations = "RESIZE",
	custom_block_glyphs = true,
	anti_alias_custom_block_glyphs = true,

	color_scheme = "Catppuccin Mocha",

	window_background_opacity = 1,
	-- macos_window_background_blur = 10,

	default_cursor_style = "BlinkingBar",

  background = {
    {
      source = {
        File = wezterm.home_dir .. "/.dotfiles/wallpapers/8.jpg"
      },
      width = "100%",
      height = "100%",
    },
    {
      source = {
        Color = "#1e1e2e"
      },
      width = "100%",
      height = "100%",
      opacity = 0.75,
    }
  }
}

return config
