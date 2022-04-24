vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
	use{
		'rhysd/clever-f.vim',
		setup = function()
			vim.g.clever_f_smart_case = '1'
			vim.g.clever_f_fix_key_direction = '1'
		end,
	}

	use{'wbthomason/packer.nvim', opt = true}
end)
