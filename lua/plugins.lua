-- Auto compile when there are changes in plugins.lua
-- vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Monokai colorscheme
    use 'tanvirtin/monokai.nvim'

    -- Better language parser
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    -- Better finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- File tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons', }, -- for file icons
    }

    -- Statusbar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    }
    
    -- Git decorations
    use {
        'lewis6991/gitsigns.nvim',
        config = "require('config.gitsigns_cfg')",
    }

    -- Automatic window resizing
    use {
        'beauwilliams/focus.nvim',
        config = "require('config.focus_cfg')",
    }

    -- auto close braces, ...
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup{}
        end,
    }

    -- shortcut for comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    }

    -- LSP
    -- Configuration
    use {
        'neovim/nvim-lspconfig',
        config = "require('config.lspconfig_cfg')",
    }
    -- Extensions (like inlay hints and diagnostics)
    use 'nvim-lua/lsp_extensions.nvim'
    -- download and manage lsp server
    use {
        'williamboman/nvim-lsp-installer',
        config = "require('lspconfig')",
    }
    -- progress indication for lsp server
    use {
        'j-hui/fidget.nvim',
        config = function()
            require("fidget").setup()
        end,
    }
    -- completion core
    use {
        'hrsh7th/nvim-cmp',
        config = "require('config.nvimcmp_cfg')",
    }
    -- completion source for system path
    use {
        'hrsh7th/cmp-path',
        after = 'nvim-cmp',
    }
    -- completion source for lspconfig
    use {
        'hrsh7th/cmp-nvim-lsp',
        after = 'nvim-cmp',
    }
    -- completion source for word in current buffer
    use {
        'hrsh7th/cmp-buffer',
        after = 'nvim-cmp',
    }
    -- completion source for vsnip snippet plugin
    use {
        'hrsh7th/cmp-vsnip',
        after = 'nvim-cmp',
    }
    -- snippet core
    use {
        'hrsh7th/vim-vsnip',
        after = 'nvim-cmp',
    }
    

end)





