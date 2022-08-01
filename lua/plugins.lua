return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Nightfox colour scheme
	use {
		'EdenEast/nightfox.nvim',
		config = 'vim.cmd("colorscheme nightfox")'
	}

	-- LSP support
	use { 'neoclide/coc.nvim', branch = 'release' }

	-- Nvim-tree to manage filesystem
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons'
		},
		config = function()
			require('nvim-tree').setup()
		end
	}

	-- Floating terminal
	use {
		"numToStr/FTerm.nvim",
		config = function()
			require('FTerm').setup({
				cmd = '/usr/bin/fish'
			})
		end
	}
end)
