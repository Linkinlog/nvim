return {
	-- Color Highlight
	"norcalli/nvim-colorizer.lua",
	event = "BufReadPre",
	config = function()
		require("colorizer").setup({
			"*", -- Highlight all files, but customize some others.
			css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css.
		})
	end,

}
