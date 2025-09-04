-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local cmd = vim.cmd

-- Manage splits
keymap.set("n", "<leader>v", "<C-w>v")
keymap.set("n", "<leader>h", "<C-w>s")
keymap.set("n", "<leader>w", "<C-w>c")

-- Close all windows and exit from Neovim but stop if there are unsaved change
keymap.set("n", "<leader>q", ":qa<CR>")
keymap.set("n", "<leader>fq", ":qa!<CR>")

keymap.set("n", "<leader>xa", "<Cmd>BufferLineCloseOthers<CR>")

-- Map Ctrl-Backspace to delete the previous word in insert mode
keymap.set("i", "<C-H>", "<C-W>", { noremap = true })
