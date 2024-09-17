vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.conceallevel = 3
vim.opt.concealcursor = ""

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.statuscolumn = "%l %=%r│%s"

vim.opt.updatetime = 50

vim.opt.clipboard = "unnamedplus"

vim.opt.colorcolumn = "80"

vim.g.netrw_sort_sequence = "[/]$,<core%(.d+)=,.[a-np-z]$,.h$,.c$,.cpp$,*,_templ.go$,.o$,.obj$,.info$,.swp$,.bak$,~$"

vim.loader.enable()

vim.opt.ex = true

vim.opt.list = true
