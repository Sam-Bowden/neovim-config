return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Nightfox colour scheme
	use {
		'EdenEast/nightfox.nvim',
		config = 'vim.cmd("colorscheme nightfox")'
	}

	-- LSP support
	use { 'neoclide/coc.nvim', branch = 'release' }

	-- Neo-tree to manage filesystem
	use {
		'nvim-neo-tree/neo-tree.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
		},
		config = function()
			require('neo-tree').setup({
				close_if_last_window = true,
				filesystem = {
					filtered_items = {
						hide_gitignored = false,
						hide_dotfiles = false,
					}
				}
			})
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
