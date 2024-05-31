return {
	"nvim-lualine/lualine.nvim",
	event = "UIEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = { theme = "palenight" },
		tabline = { lualine_a = { { "tabs" } } },
	},
}
