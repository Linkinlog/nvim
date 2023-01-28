vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Highlight TODO comments
    use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
    -- Discord Presence
    use { 'andweeb/presence.nvim' }
    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    -- Syntax Highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- LSP and friends
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
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
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
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
    -- Session Management
    use { 'rmagatti/auto-session' }
    -- Themes / Visual Plugins
    use({
        'folke/tokyonight.nvim',
        config = function()
            vim.cmd('colorscheme tokyonight')
        end
    })
    use { 'folke/zen-mode.nvim' }
    use { 'nvim-tree/nvim-web-devicons' }
    -- Statusline / Tabline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' }
end)
