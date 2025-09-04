return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      dim_inactive = true, -- dims inactive windows
      lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
      -- on_colors = function(colors)
      --   colors.bg = "#000000" -- Example hex color
      --   colors.bg_dark = "#000000" -- Optional: adjust darker background
      -- end,
      on_highlights = function(highlights, colors)
        highlights.CursorLine = { bg = "#141414" } -- Replace with your desired hex color
      end,
    },
  },
}
