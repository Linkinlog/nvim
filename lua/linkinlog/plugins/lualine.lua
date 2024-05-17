return {
	"nvim-lualine/lualine.nvim",
	event = "UIEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = { options = { theme = "dracula" }, tabline = { lualine_a = { { "tabs" } } } },
}
