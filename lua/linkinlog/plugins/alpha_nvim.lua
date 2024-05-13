return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	opts = function()
		local dashboard = require("alpha.themes.dashboard")
		local logo = [[
                                             o8o                           .o oooo                       o8o                                                        o8o                        o.   
                                             `"'                          .8' `888                       `YP                                                        `"'                        `8.  
ooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.        .8'   888   .ooooo.   .oooooooo  '   .oooo.o      oooo    ooo  .ooooo.  oooo d8b  .oooo.o oooo   .ooooo.  ooo. .oo.    `8. 
`888P"Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P"Y88bP"Y88b       88    888  d88' `88b 888' `88b      d88(  "8       `88.  .8'  d88' `88b `888""8P d88(  "8 `888  d88' `88b `888P"Y88b    88 
 888   888  888ooo888 888   888   `88..8'    888   888   888   888       88    888  888   888 888   888      `"Y88b.         `88..8'   888ooo888  888     `"Y88b.   888  888   888  888   888    88 
 888   888  888    .o 888   888    `888'     888   888   888   888       `8.   888  888   888 `88bod8P'      o.  )88b         `888'    888    .o  888     o.  )88b  888  888   888  888   888   .8' 
o888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o       `8. o888o `Y8bod8P' `8oooooo.      8""888P'          `8'     `Y8bod8P' d888b    8""888P' o888o `Y8bod8P' o888o o888o .8'  
                                                                           `"                 d"     YD                                                                                        "'   
                                                                                              "Y88888P'                                                                                             
                                                                                                                                                                                                    
      ]]

		dashboard.section.header.val = vim.split(logo, "\n")
		dashboard.section.buttons.val = {
			dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
			dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
			dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", " " .. " Config", ":e ~/.config/nvim <CR>"),
			dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
			dashboard.button("q", " " .. " Quit", ":qa<CR>"),
		}
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
		end
		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "AlphaButtons"
		dashboard.section.footer.opts.hl = "AlphaFooter"
		dashboard.opts.layout[1].val = 8
		return dashboard
	end,
	config = function(_, dashboard)
		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
