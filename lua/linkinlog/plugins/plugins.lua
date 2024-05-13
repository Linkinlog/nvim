return {
	{ "earthly/earthly.vim", ft = "Earthfile" },
	{ "github/copilot.vim", event = "BufReadPre" },
	{ "numToStr/Comment.nvim", event = "BufReadPre", opts = {} },
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
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
}
