local wezterm = require("wezterm")

return {
	default_prog = { "/usr/local/bin/fish" },
	check_for_updates = true,
	default_cursor_style = "SteadyBar",
	cursor_thickness = 2,
	initial_cols = 130,
	initial_rows = 25,
	window_background_opacity = 0.9,
	macos_window_background_blur = 20,
	-- font = wezterm.font("MesloLGLDZ Nerd Font"),
	font = wezterm.font({
		family = "Anonymous Pro",
		-- family = "JetBrainsMono Nerd Font",
		-- weight = "ExtraLight",
	}),
	-- font = wezterm.font("Iosevka Nerd Font Mono"),
	font_size = 18,
	freetype_load_target = "Light",
	freetype_render_target = "HorizontalLcd",
	line_height = 1.3,
	bold_brightens_ansi_colors = true,
	-- dpi = 144.0,
	-- color_scheme = "Aci (Gogh)",
	color_scheme = "TokyoNightStorm (Gogh)",
	-- color_scheme = "tokyonight",
	-- color_scheme = "Github Dark",
	-- color_scheme = "ayu",
	hide_tab_bar_if_only_one_tab = true,
	colors = {
		background = "#0f1119",
		-- background = "#151f32",
	},
	window_decorations = "RESIZE",
	window_padding = {
		left = 22,
		right = 22,
		bottom = 22,
		top = 36,
	},
	window_frame = {
		font_size = 16,
		inactive_titlebar_bg = "#353535",
		active_titlebar_bg = "#2b2042",
		inactive_titlebar_fg = "#cccccc",
		active_titlebar_fg = "#ffffff",
		inactive_titlebar_border_bottom = "#2b2042",
		active_titlebar_border_bottom = "#2b2042",
		button_fg = "#cccccc",
		button_bg = "#2b2042",
		button_hover_fg = "#ffffff",
		button_hover_bg = "#3b3052",
		border_left_color = "#353535",
		border_right_color = "#353535",
		border_bottom_color = "#353535",
		border_top_color = "#353535",
		border_left_width = "0.1cell",
		border_right_width = "0.1cell",
		border_bottom_height = "0.05cell",
		border_top_height = "0.05cell",
		-- active_titlebar_bg = "rgb(25, 26, 42)",
	},
}
