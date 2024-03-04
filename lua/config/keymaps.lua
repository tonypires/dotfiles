-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local cmd = vim.cmd

-- Disable arrow keys
keymap.set("", "<up>", "<nop>")
keymap.set("", "<down>", "<nop>")
keymap.set("", "<left>", "<nop>")
keymap.set("", "<right>", "<nop>")

-- Manage splits
keymap.set("n", "<leader>v", "<C-w>v")
keymap.set("n", "<leader>h", "<C-w>s")
keymap.set("n", "<leader>w", "<C-w>c")

-- Close all windows and exit from Neovim but stop if there are unsaved change
keymap.set("n", "<leader>q", ":qa<CR>")
keymap.set("n", "<leader>fq", ":qa!<CR>")

-- keymap.set("n", "<leader>w", ":bd<CR>")
keymap.set("n", "<leader>xa", "<Cmd>BufferLineCloseOthers<CR>")

-- Map Ctrl-Backspace to delete the previous word in insert mode
keymap.set("i", "<C-H>", "<C-W>", { noremap = true })

-- Yank into the system clipboard (put behind ctrl-c instead of mapping to 'y' because this can be slow... looking at you Windows)
-- This is useful when copying between nvim sessions (regular yanks are scoped to the nvim session).
-- E.g. Copying between terminal multiplexer sessions or copying into other app (i.e. chrome, etc).
-- Regular yanks 'y' work as expected -> scoped to the nvim session.
keymap.set({ "n", "v" }, "<C-c>", '"+y')
keymap.set({ "n", "v" }, "<C-v>", '"+p')

-- Correct accidental capitalization of these commands
cmd(":command! Wq wq")
cmd(":command! Wa wa")
cmd(":command! W w")
cmd(":command! Q q")
