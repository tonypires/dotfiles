-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
-- 	print("Colorscheme not found")
-- 	return
-- end

local theme_status, theme = pcall(require, "tokyonight")
if not theme_status then
	return
end

theme.setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	sidebar_ = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- function will be called with a ColorScheme table
	on_colors = function(colors)
		colors.fg_gutter = "#858585"
		colors.border = colors.orange -- set the split border color
	end,

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with a Highlights and ColorScheme table
	on_highlights = function(highlights, colors)
		-- Set the selection and search highlight color to red with black text
		highlights.Visual = { bg = "#cc6666", fg = "#000000" }
		highlights.Search = { bg = "#cc6666", fg = "#000000" }
		highlights.IncSearch = { bg = "#cc6666", fg = "#000000" }
		highlights.CurSearch = { bg = "#cc6666", fg = "#000000" }
	end,
})

-- Setting the theme via colorscheme must be set after configuring the theme via setup
local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not status then
	print("Colorscheme not found")
	return
end