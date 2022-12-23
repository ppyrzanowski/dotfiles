-- Install plugin manager (Packer)
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    -- Plugin manager, Packer manages itself
    use('wbthomason/packer.nvim')

    -- Theme and colors
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Fuzzyfinder and filenavigation
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-tree/nvim-web-devicons' } -- Font icons
        }
    })
    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    -- TODO: check if this fzf installation is right
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
    -- Mark/Pin files
    use('theprimeagen/harpoon')
    -- Longer undo history and viewer
    use('mbbill/undotree')

    -- Smart code interactions
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- Highlight, edit and navigate code (in-editor AST)
    use('nvim-treesitter/playground') -- Buffer of internal treesitter AST

    -- Git
    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')

    -- Language Server Protocol (LSP)
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- Status updates for LSP
            { 'j-hui/fidget.nvim' },
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- User interface
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            { 'nvim-tree/nvim-web-devicons' } -- Font icons
        }
    } -- Fancier statusline
end)
