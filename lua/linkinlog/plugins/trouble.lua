return {
	"folke/trouble.nvim",
	keys = {
		"<leader>tt",
	},
	config = function()
		require("trouble").setup({
			icons = false,
		})
	end,
}
