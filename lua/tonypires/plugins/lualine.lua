local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine theme
local lualine_theme = require("lualine.themes.tokyonight")
-- local lualine_theme = "vscode"

-- new colors for theme
local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
	white = "#FFFFFF",
}

lualine_theme.normal.a.bg = new_colors.blue
lualine_theme.insert.a.bg = new_colors.green
lualine_theme.visual.a.bg = new_colors.violet
lualine_theme.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black,
	},
}

lualine.setup({
	options = {
		theme = lualine_theme,
	},
	always_divide_middle = true,
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			{ "branch", color = { bg = new_colors.black } },
			{ "diff", color = { bg = new_colors.black } },
			{ "diagnostics", color = { bg = new_colors.black } },
		},
		lualine_c = {
			{ "filename", color = { bg = new_colors.black, fg = new_colors.white } },
		},
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		-- lualine_y = { "" },
		lualine_z = { "" },
	},
	inactive_sections = {
		lualine_a = { "mode" },
		lualine_b = {
			{ "branch", color = { bg = new_colors.black } },
			{ "diff", color = { bg = new_colors.black } },
			{ "diagnostics", color = { bg = new_colors.black } },
		},
		lualine_c = {
			{ "filename", color = { bg = new_colors.black } },
		},
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "" },
		lualine_z = { "" },
	},
})
