local opt = vim.opt

-- General
opt.swapfile = false -- Don't use a swapfile
opt.cursorline = true -- Highlight current line
opt.backspace = "indent,eol,start"
--opt.clipboard:append("unnamedplus") -- Clipboard (disabled as this setting causes a startup lag - when run via WSL2 at least)
opt.iskeyword:append("-")

-- UI
opt.number = true -- Show line number
opt.relativenumber = true -- Relative line numbers
opt.splitright = true -- Vertical split right
opt.splitbelow = true -- Horizontal split bottom
opt.ignorecase = true -- Ignore case when searching
opt.wrap = false -- Line wrapping
opt.smartcase = true -- Ignore lowercase for whole pattern
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.background = "dark" -- Set the default color group
opt.signcolumn = "yes" -- Show sign column next to the line numbers

-- Tabs / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Custom commands
-- Copy any text that is yanked into a buffer into Windows Clipboard too
vim.cmd([[ 
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
]])
