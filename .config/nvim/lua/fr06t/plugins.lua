local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- PACKER
	use 'wbthomason/packer.nvim'

	-- COLOR SCHEME	
	use 'ellisonleao/gruvbox.nvim'

	-- COMPLETION
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use "windwp/nvim-autopairs"

	-- LSP
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		-- Snippet Collection (Optional)
		{'rafamadriz/friendly-snippets'},
	  }
	}

	-- LUALINE
	use	"nvim-lualine/lualine.nvim"

	-- STARTUP
	use "goolord/alpha-nvim"
	use "folke/which-key.nvim"

	-- TELESCOPE
	use "nvim-treesitter/nvim-treesitter"
	use "nvim-telescope/telescope.nvim"
	use "nvim-lua/plenary.nvim"
	use "nvim-tree/nvim-web-devicons"
	
	-- TREESITTER	

	-- FORMAT-SUPPORT
	use({
    	"iamcco/markdown-preview.nvim",
    	run = function() vim.fn["mkdp#util#install"]() end,
	})

	if packer_bootstrap then
		require('packer').sync()
	end
end)
