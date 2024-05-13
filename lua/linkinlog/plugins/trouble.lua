return {
	"folke/trouble.nvim",
	event = "BufReadPre",
	config = function()
		require("trouble").setup({
			icons = false,
		})

		vim.keymap.set("n", "<leader>tt", function()
			require("trouble").toggle()
		end)
	end,
}
