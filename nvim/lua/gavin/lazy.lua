local plugins = {
	-- plugins
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = {
			{'nvim-lua/plenary.nvim'},
		},
	},
	{
		'nvim-tree/nvim-tree.lua',
		lazy = false,
		dependencies = {
			{'nvim-tree/nvim-web-devicons'},
		},
	},
    -- 'rose-pine/neovim',
    'folke/tokyonight.nvim',
	'nvim-treesitter/nvim-treesitter',
	'nvim-treesitter/playground',
	'ThePrimeagen/harpoon',
    'tpope/vim-fugitive',
	'christoomey/vim-tmux-navigator',
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
}

local opts = {}

require('lazy').setup(plugins, opts)
