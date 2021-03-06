local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()

	use 'bluz71/vim-moonfly-colors' -- Colorscheme
	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
        }
	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}



	if packer_bootstrap then
		require('packer').sync()
	end
end)
