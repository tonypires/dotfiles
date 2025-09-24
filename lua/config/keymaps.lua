-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true, desc = "" }

if vim.g.vscode then
  opts.desc = "VSCode: Quick Open File"
  keymap.set("n", "<leader>ff", "<cmd> lua require('vscode').action('workbench.action.quickOpen')<CR>", opts)
  opts.desc = "VSCode: Split Vertically"
  keymap.set("n", "<leader>v", "<cmd> lua require('vscode').action('workbench.action.splitEditor')<CR>", opts)
  keymap.set("n", "<leader>h", "<cmd> lua require('vscode').action('workbench.action.splitEditorDown')<CR>")
  -- keymap.set("n", "<leader>w", "<cmd> lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")
  keymap.set(
    "n",
    "<leader>ta",
    "<cmd> lua require('vscode').action('workbench.action.toggleActivityBarVisibility')<CR>"
  )
  keymap.set("n", "<leader>a", "<cmd> lua require('vscode').action('editor.action.quickFix')<CR>")
  keymap.set("n", "<leader>fc", "<cmd> lua require('vscode').action('workbench.action.showCommands')<CR>")
  keymap.set("n", "<leader>fr", "<cmd> lua require('vscode').action('editor.action.goToReferences')<CR>")
  keymap.set("n", "<leader>rn", "<cmd> lua require('vscode').action('workbench.action.rename')<CR>")
  keymap.set("n", "<leader>fs", "<cmd> lua require('vscode').action('workbench.action.findInFiles')<CR>")
  keymap.set("n", "<leader>n", "<cmd> lua require('vscode').action('editor.action.marker.nextInFiles')<CR>")

  keymap.set("n", "<leader>m", "<cmd> lua require('vscode').action('workbench.action.marker.prevInFiles')<CR>")
  keymap.set("n", "<leader>ca", "<cmd> lua require('vscode').action('workbench.action.closeOtherEditors')<CR>")
  keymap.set("n", "gi", "<cmd> lua require('vscode').action('editor.action.goToImplementation')<CR>")
else
  -- Manage splits
  keymap.set("n", "<leader>v", "<C-w>v")
  keymap.set("n", "<leader>h", "<C-w>s")
  -- keymap.set("n", "<leader>wd", "<C-w>c")

  -- Close all windows and exit from Neovim but stop if there are unsaved change
  keymap.set("n", "<leader>q", ":qa<CR>")
  keymap.set("n", "<leader>fq", ":qa!<CR>")

  keymap.set("n", "<leader>xa", "<Cmd>BufferLineCloseOthers<CR>")

  -- Map Ctrl-Backspace to delete the previous word in insert mode
  keymap.set("i", "<C-H>", "<C-W>", { noremap = true })
end
