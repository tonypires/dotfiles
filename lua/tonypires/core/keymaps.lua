vim.g.mapleader = ","

local keymap = vim.keymap

-- Disable arrow keys
keymap.set("", "<up>", "<nop>")
keymap.set("", "<down>", "<nop>")
keymap.set("", "<left>", "<nop>")
keymap.set("", "<right>", "<nop>")

-- Clear search highlighting with <leader> and c
keymap.set("n", "<leader>c", ":nohl<CR>")

-- In normal mode, when deleting a single character this will prevent it being copied into the buffer
-- keymap.set("n", "x", "_x")

-- Change split orientation
keymap.set("n", "<leader>tk", "<C-w>t<C-w>K") -- change vertical to horizontal
keymap.set("n", "<leader>th", "<C-w>t<C-w>H") -- change horizontal to vertical

-- Create splits
keymap.set("n", "<leader>v", "<C-w>v")
keymap.set("n", "<leader>h", "<C-w>s")
keymap.set("n", "<leader>w", "<C-w>c")

-- Resize splits
keymap.set("n", "<C-]>", "10<C-w><")
keymap.set("n", "<C-[>", "10<C-w>>")

-- Reload configuration without restart nvim
keymap.set("n", "<leader>ra", ":so %<CR>")
-- Reload current file
keymap.set("n", "<leader>r", ":e!<CR>")

-- Center cursorline when scrolling
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")

-- Correct accidental capitalization of these commands
vim.cmd(":command! Wq wq")
vim.cmd(":command! W w")
vim.cmd(":command! Q q")

-- Map Ctrl-Backspace to delete the previous word in insert mode
keymap.set("i", "<C-H>", "<C-W>", { noremap = true })

-- Close all windows and exit from Neovim with <leader> and q
keymap.set("n", "<leader>q", ":qa!<CR>")

-- Plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>mm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
