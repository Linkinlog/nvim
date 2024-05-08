vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>")

-- Open debugger tools
vim.keymap.set("n", "<A-d>", [[<cmd>lua require("dapui").toggle()<CR>]])
vim.keymap.set("n", "<A-b>", "<cmd>DapToggleBreakpoint<CR>")


-- Move line up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Delete all buffers except the one open
vim.keymap.set("n", "<A-e>bda", [[%bd|e#]])

-- Change buffers
vim.keymap.set("n", "<A-,>", "<cmd>bp<CR>")
vim.keymap.set("n", "<A-.>", "<cmd>bn<CR>")
vim.keymap.set("n", "<A-j>", "<cmd>b#<CR>")

-- Append next line to current
vim.keymap.set("n", "J", "mzJ`z")

-- zz after C-d/C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center when going to next found
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["+d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- For going inside of {} on a newline
vim.keymap.set("n", "<C-n>", "i<CR><Esc>O")


-- Go to split window when open
vim.keymap.set("n", "<C-w>v", "<C-w>v<C-w>l")
vim.keymap.set("n", "<C-w>s", "<C-w>s<C-w>j")
