local opt = vim.opt
--- mouse ---
-- opt.guicursor = ""
-- having diferent cursos for normal and insert mode show be good
opt.mouse = "a"

--- number ---
opt.number = true
opt.relativenumber = true
--- decorations and QOL ---
opt.showmode = false
opt.laststatus = 3
opt.cmdheight = 2
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 8
-- opt.colorcolumn = "80"
opt.updatetime = 50
--- Undo ---
-- opt.undodir = "/home/abrolhus/.config/nvim/undodir"
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.swapfile = false
opt.backup = true
opt.backupdir = os.getenv("HOME") .. "/.vim/backupdir" -- um backupzinho nunca faz mal ta
--- tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true
-- completion
opt.completeopt= { "menu", "menuone", "noselect"}

--- leader key ---
vim.g.mapleader = " "
--- netrw ---
vim.g.netrw_banner = 0
