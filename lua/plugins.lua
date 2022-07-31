return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Nightfox colour scheme
	use 'EdenEast/nightfox.nvim'
	vim.cmd("colorscheme nightfox")

	-- LSP support
	use { 'neoclide/coc.nvim', branch = 'release' }

	-- Nvim-tree to manage filesystem
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		}
	}
	require('nvim-tree').setup()

	-- Floating terminal
	use "numToStr/FTerm.nvim"
end)
