return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },
    dashboard = {
      enabled = false,
    },
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    zoom = {
      enabled = false,
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
          layout = {
            auto_hide = { "input" },
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
}
