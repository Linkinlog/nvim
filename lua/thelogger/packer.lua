vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Highlight TODO comments
    use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
    -- Discord Presence
    use { 'andweeb/presence.nvim' }
    -- Activity metrics
    use { 'https://gitlab.com/code-stats/code-stats-vim.git', as = 'codestats' }
    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-live-grep-args.nvim' }
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    -- Syntax Highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-treesitter/nvim-treesitter-context' }
    -- LSP and friends
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'jose-elias-alvarez/null-ls.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'saadparwaiz1/cmp_luasnip' },
            -- Laravel
            { 'jwalton512/vim-blade' },
            -- Go
            { 'ray-x/go.nvim' },
            { 'ray-x/guihua.lua' }, -- recommended if need floating window support
            -- Snippets
            {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                tag = "*",
                -- install jsregexp (optional!:).
                run = "make install_jsregexp"
            },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    -- Integrated testing
    use({ "vim-test/vim-test" })
    -- Debugger
    use { 'mfussenegger/nvim-dap' }
    use { 'rcarriga/nvim-dap-ui' }
    use { 'theHamsta/nvim-dap-virtual-text' }
    use { 'nvim-telescope/telescope-dap.nvim' }
    -- Undo Tree
    use { 'mbbill/undotree' }
    -- Git / Github
    use { 'tpope/vim-fugitive' }
    use { 'github/copilot.vim' }
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    -- Trouble.nvim
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end
    })
    -- Themes / Visual Plugins
    -- use { "catppuccin/nvim", as = "catppuccin" }
    use { 'dracula/vim', as = 'dracula' }
    use { 'folke/zen-mode.nvim' }
    use { 'nvim-tree/nvim-web-devicons' }
    -- Statusline / Tabline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- VSCode like top bar
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
        },
        config = function()
            require("barbecue").setup()
        end,
    })
end)
