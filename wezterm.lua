local wezterm = require("wezterm")

return {
	-- Use Git Bash as the default shell
	default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i" },

	-- Font configuration for Windows
	font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font",
		"Cascadia Mono",
		"Fira Code",
		"Consolas",
	}),
	font_size = 11.5,

	-- Set the color scheme
	color_scheme = "Catppuccin Mocha",

	-- Appearance
	window_background_opacity = 0.90,
	window_decorations = "RESIZE",
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,

	initial_cols = 120,
	initial_rows = 30,

	-- Terminal behavior
	enable_wayland = false,
	term = "xterm-256color",

	inactive_pane_hsb = {
		saturation = 0.8,
		brightness = 0.7,
	},

		-- Keybindings (optional)
	keys = {
		{
			key = "t",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SpawnTab("CurrentPaneDomain"),
		},
		{
			key = "q",
			mods = "CTRL|SHIFT",
			action = wezterm.action.CloseCurrentTab({ confirm = true }),
		},
		-- Split vertically (right side) with Ctrl+Shift+J
		{
			key = "j",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical({
				domain = "CurrentPaneDomain",
				args = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i" },
			}),
		},

		-- Split horizontally (below) with Ctrl+Shift+L
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal({
				domain = "CurrentPaneDomain",
				args = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i" },
			}),
		},
		{
			key = "w",
			mods = "CTRL|SHIFT",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},

		-- Move between panels
		{
			key = "h",
			mods = "CTRL|ALT",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "CTRL|ALT",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "CTRL|ALT",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "CTRL|ALT",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
	},

	mouse_bindings = {
		{
			event = { Down = { streak = 1, button = "Left" } },
			mods = "ALT",
			action = wezterm.action.StartWindowDrag,
		},
	},
	
}
