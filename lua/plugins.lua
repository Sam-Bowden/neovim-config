return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'vala-lang/vala.vim'

	-- Nightfox colour scheme
	use {
		'EdenEast/nightfox.nvim',
		config = function()
			require('nightfox').setup({
				options = {
					transparent = true,
				}
			})
			vim.cmd("colorscheme nightfox")
		end
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

			vim.keymap.set('n', '<A-t>', '<CMD>Neotree toggle<CR>')
		end
	}

	-- Floating terminal
	use {
		"numToStr/FTerm.nvim",
		config = function()
			local fterm = require('FTerm')

			local term1 = fterm:new({cmd = "/usr/bin/zsh"})
			vim.keymap.set('n', '<A-e>', function() term1:toggle() end)
			vim.keymap.set('t', '<A-e>', function() term1:toggle() end)

			local term2 = fterm:new({cmd = "/usr/bin/zsh"})
			vim.keymap.set('n', '<A-s>', function() term2:toggle() end)
			vim.keymap.set('t', '<A-s>', function() term2:toggle() end)
	end
	}
end)
