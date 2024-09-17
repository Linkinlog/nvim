return {
	{ "earthly/earthly.vim", ft = "Earthfile" },
	{ "github/copilot.vim", event = { "BufAdd", "BufReadPre" } },
	{ "numToStr/Comment.nvim", event = { "BufAdd", "BufReadPre" }, opts = {} },
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufAdd" },
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	{ "isobit/vim-caddyfile", event = { "BufAdd", "BufReadPre" } },
}
