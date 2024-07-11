-- Open file explorer
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>")

-- Normal mode
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "jj", "<Esc>")

-- For going inside of {} on a newline
vim.keymap.set("n", "<C-n>", "i<CR><Esc>O")

-- Go to split window when open
vim.keymap.set("n", "<C-w>v", "<C-w>v<C-w>l")
vim.keymap.set("n", "<C-w>s", "<C-w>s<C-w>j")

-- Stolen from ThePrimeagen
-- Move line up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

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

-- Next/Prev Quickfix and Location
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[R]eplace [W]ord" })

-- See `:help telescope.builtin`
vim.keymap.set("n", "<leader>sh", ":lua require('telescope.builtin').help_tags()<CR>", { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", ":lua require('telescope.builtin').keymaps()<CR>", { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", ":lua require('telescope.builtin').find_files()<CR>", { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<C-p>", ":lua require('telescope.builtin').git_files()<CR>", { desc = "[S]earch [P]roject" })
vim.keymap.set(
	"n",
	"<leader>ss",
	":lua require('telescope.builtin').builtin()<CR>",
	{ desc = "[S]earch [S]elect Telescope" }
)
vim.keymap.set(
	"n",
	"<leader>sw",
	":lua require('telescope.builtin').grep_string()<CR>",
	{ desc = "[S]earch current [W]ord" }
)
vim.keymap.set("n", "<leader>sg", ":lua require('telescope.builtin').live_grep()<CR>", { desc = "[S]earch by [G]rep" })
vim.keymap.set(
	"n",
	"<leader>sd",
	":lua require('telescope.builtin').diagnostics()<CR>",
	{ desc = "[S]earch [D]iagnostics" }
)
vim.keymap.set("n", "<leader>sr", ":lua require('telescope.builtin').resume()<CR>", { desc = "[S]earch [R]esume" })
vim.keymap.set(
	"n",
	"<leader>s.",
	":lua require('telescope.builtin').oldfiles()<CR>",
	{ desc = '[S]earch Recent Files ("." for repeat)' }
)
vim.keymap.set("n", "<leader>b", ":lua require('telescope.builtin').buffers()<CR>", { desc = "[B]uffers" })
vim.keymap.set("n", "<leader>ps", function()
	local builtin = require("telescope.builtin")
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "[P]rompt [S]earch" })
vim.keymap.set(
	"n",
	"<leader>ls",
	":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
	{ desc = "[L]ive [S]earch" }
)

vim.keymap.set("n", "<leader>/", function()
	local builtin = require("telescope.builtin")
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "<leader>s/", function()
	local builtin = require("telescope.builtin")
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "[S]earch [/] in Open Files" })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set("n", "<leader>sn", function()
	local builtin = require("telescope.builtin")
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })

-- Git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>com", ":Git checkout main<CR>", { desc = "[C]heck[O]ut [M]ain" })
vim.keymap.set("n", "<leader>coh", ":Git checkout -b hotfix/COPA-", { desc = "[C]heck[O]ut new [H]otfix" })
vim.keymap.set("n", "<leader>cof", ":Git checkout -b feature/COPA-", { desc = "[C]heck[O]ut new [F]eature" })
vim.keymap.set("n", "<leader>cob", ":Git checkout -b bugfix/COPA-", { desc = "[C]heck[O]ut new [B]ugfix" })
vim.keymap.set("n", "<leader>tb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "[T]oggle [B]lame" })

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Conform
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "[F]ormat buffer" })
