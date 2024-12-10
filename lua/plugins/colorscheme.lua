return {
  {
    "Mofiqul/vscode.nvim",
    opts = {
      -- Enable transparent background
      transparent = false,

      -- Enable italic comment
      italic_comments = false,

      -- Disable nvim-tree background color
      disable_nvimtree_bg = true,

      -- Override colors (see ./lua/vscode/colors.lua)
      color_overrides = {
        -- vscLineNumber = "#FFFFFF",
        vscBack = "#000000",
      },

      -- Override highlight groups (see ./lua/vscode/theme.lua)
      group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        -- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        -- Underlined = { fg = c.vscNone, bg = "NONE", underline = false },
      },
    },
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   opts = {
  --     style = "night",
  --     light_style = "day", -- The theme is used when the background is set to light
  --     transparent = false, -- Enable this to disable setting the background color
  --     terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  --     styles = {
  --       -- Style to be applied to different syntax groups
  --       -- Value is any valid attr-list value for `:help nvim_set_hl`
  --       comments = { italic = false },
  --       keywords = { italic = false },
  --       functions = {},
  --       variables = {},
  --       -- Background styles. Can be "dark", "transparent" or "normal"
  --       -- sidebars = "dark", -- style for sidebars, see below
  --       -- floats = "dark", -- style for floating windows
  --     },
  --     sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  --     day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  --     hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  --     dim_inactive = false, -- dims inactive windows
  --     lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --
  --     --- You can override specific color groups to use other groups or a hex color
  --     --- function will be called with a ColorScheme table
  --     on_colors = function(colors)
  --       colors.fg_gutter = "#404040"
  --       colors.bg = "#1e1e1e"
  --       colors.border = colors.orange -- set the split border color
  --       colors.comment = "#757575"
  --     end,
  --
  --     --- You can override specific highlights to use other groups or a hex color
  --     --- function will be called with a Highlights and ColorScheme table
  --     on_highlights = function(highlights, c)
  --       -- Set the selection and search highlight color to red with black text
  --       -- highlights.Visual = { bg = "#cc6666", fg = "#000000" }
  --       -- highlights.Search = { bg = "#cc6666", fg = "#000000" }
  --       -- highlights.IncSearch = { bg = "#cc6666", fg = "#000000" }
  --       -- highlights.CurSearch = { bg = "#cc6666", fg = "#000000" }
  --       -- Custom highlights for vim-illuminate
  --       highlights.IlluminatedWord = { bg = "#404040" }
  --       highlights.IlluminatedCurWord = { bg = "#404040" }
  --       highlights.IlluminatedWordText = { bg = "#404040" }
  --       highlights.IlluminatedWordRead = { bg = "#404040" }
  --       highlights.IlluminatedWordWrite = { bg = "#404040" }
  --       -- Custom highlights for nvim-tree
  --       highlights.NvimTreeFolderIcon = { bg = "NONE", fg = "#82aaff" }
  --       highlights.NvimTreeGitDeleted = { fg = "#e26a75" }
  --       highlights.NvimTreeGitDirty = { fg = "#7ca1f2" }
  --       highlights.NvimTreeGitNew = { fg = "#b8db87" }
  --       highlights.NvimTreeImageFile = { fg = "#828bb8" }
  --       highlights.NvimTreeIndentMarker = { fg = "#3b4261" }
  --       highlights.NvimTreeNormal = { bg = "#0d1117", fg = "#828bb8" }
  --       highlights.NvimTreeNormalNC = { bg = "#0d1117", fg = "#828bb8" }
  --       highlights.NvimTreeOpenedFile = { bg = "#2f334d" }
  --       highlights.NvimTreeRootFolder = { bold = true, fg = "#82aaff" }
  --       highlights.NvimTreeSpecialFile = { fg = "#fca7ea", underline = true }
  --       highlights.NvimTreeSymlink = { fg = "#82aaff" }
  --       highlights.NvimTreeWinSeparator = { bg = "#1e2030", fg = "#1e2030" }
  --       -- Custom highlights for Telescope
  --       highlights.TelescopeNormal = { bg = "#1c1c1c", fg = "#589ed7" }
  --       highlights.TelescopeBorder = { bg = "#1c1c1c", fg = "#589ed7" }
  --       -- Bufferline (barbar.lua) highlights
  --       highlights.BufferCurrent = { bg = "#000000" }
  --       highlights.BufferCurrent = { bg = "#000000" }
  --       highlights.BufferCurrentERROR = { bg = "#000000" }
  --       highlights.BufferCurrentHINT = { bg = "#000000" }
  --       highlights.BufferCurrentIcon = { bg = "#000000" }
  --       highlights.BufferCurrentIndex = { bg = "#000000" }
  --       highlights.BufferCurrentINFO = { bg = "#000000" }
  --       highlights.BufferCurrentMod = { bg = "#000000" }
  --       highlights.BufferCurrentSign = { bg = "#000000" }
  --       highlights.BufferCurrentTarget = { bg = "#000000" }
  --       highlights.BufferCurrentWARNk = { bg = "#000000" }
  --
  --       highlights.BufferInactive = { bg = "#35624b" }
  --       highlights.BufferInactiveERROR = { bg = "#35624b" }
  --       highlights.BufferInactiveHINT = { bg = "#35624b" }
  --       highlights.BufferInactiveIcon = { bg = "#35624b" }
  --       highlights.BufferInactiveIndex = { bg = "#35624b" }
  --       highlights.BufferInactiveINFO = { bg = "#35624b" }
  --       highlights.BufferInactiveMod = { bg = "#35624b" }
  --       highlights.BufferInactiveSign = { bg = "#35624b" }
  --       highlights.BufferInactiveTarget = { bg = "#35624b" }
  --       highlights.BufferInactiveWARN = { bg = "#35624b" }
  --     end,
  --   },
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
      -- colorscheme = "tokyonight",
    },
  },
}
