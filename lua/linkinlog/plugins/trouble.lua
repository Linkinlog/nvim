return {
	"folke/trouble.nvim",
	lazy = true,
	config = function()
		require("trouble").setup({
			icons = false,
		})
	end,
}
