return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",
          next = "<M-]>",
          prev = "<M-[>",
          accept_word = "<M-Tab>",
          dismiss = "<C-]>",
        },
      },
    },
    config = function(_, opts)
      require("copilot").setup(opts)

      -- fallback Tab mapping: accept Copilot if visible, else fallback to blink.cmp or default Tab
      vim.keymap.set("i", "<Tab>", function()
        local cop = require("copilot.suggestion")
        if cop.is_visible() then
          cop.accept()
          return ""
        else
          -- Fallback: what blink.cmp or default Tab does
          return vim.api.nvim_replace_termcodes("<Tab>", true, true, true)
        end
      end, { expr = true, silent = true, desc = "Copilot Accept" })
    end,
  },
}
