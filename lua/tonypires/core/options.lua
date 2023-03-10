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

-- Global autocmds

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

-- Autoreload the file being edited if changes are made to it outside  this session
--
-- autoread: reads the file when changed from the outside (but it doesnt work on its
-- own, there is no internal timer or something like that. It will only read the file
-- when vim does an action, like a command in ex :!
--
-- CursorHold * checktime: when the cursor isn't moved by the user for the time specified
-- in 'updatetime' (which is 4000 miliseconds by default) checktime is executed, which
-- checks for changes from outside the file
--
-- call feedkeys("lh"): the cursor is moved once, right and back left. and then
-- nothing happens (... which means, that CursorHold is triggered, which means we have a loop)
vim.cmd([[
  set autoread | au CursorHold * checktime | call feedkeys("lh")
]])
