-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)

  --------------------------------------------------------------------------------
  -- packer必备 ✅
  --------------------------------------------------------------------------------
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "rcarriga/nvim-notify" -- notify
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-web-devicons" -- icons

  --------------------------------------------------------------------------------
  -- edit enhance ✅
  --------------------------------------------------------------------------------
  use "windwp/nvim-autopairs"
  use "kevinhwang91/nvim-hlslens"
  use "kristijanhusak/vim-carbon-now-sh"
  use "uga-rosa/translate.nvim"

  use "terrortylor/nvim-comment"
  use "folke/which-key.nvim" -- which  key

  --------------------------------------------------------------------------------
  -- UI ✅
  --------------------------------------------------------------------------------
  use "projekt0n/github-nvim-theme"
  use "lewis6991/gitsigns.nvim"
  use "akinsho/bufferline.nvim"
  use "nvim-lualine/lualine.nvim" -- status line
  use "kyazdani42/nvim-tree.lua"
  use "mbbill/undotree"
  use "goolord/alpha-nvim" -- welcome page

  --------------------------------------------------------------------------------
  -- lsp ✅
  --------------------------------------------------------------------------------
  use "stevearc/aerial.nvim"
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "kosayoda/nvim-lightbulb" -- code action
  use "ray-x/lsp_signature.nvim" -- show function signature when typing
  use "folke/trouble.nvim"

  --------------------------------------------------------------------------------
  -- treesitter ✅
  --------------------------------------------------------------------------------
  use "nvim-treesitter/nvim-treesitter"
  use "lukas-reineke/indent-blankline.nvim" -- indent blankline
  use "p00f/nvim-ts-rainbow"
  use "lewis6991/spellsitter.nvim"
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use "romgrk/nvim-treesitter-context" -- show class/function at the top
  use "tpope/vim-surround" -- vim surround

  --------------------------------------------------------------------------------
  -- telescope
  --------------------------------------------------------------------------------
  use "ahmedkhalf/project.nvim" -- project manager
  use "nvim-telescope/telescope.nvim"
  use "folke/todo-comments.nvim" -- todo comments

  --------------------------------------------------------------------------------
  -- cmp ✅
  --------------------------------------------------------------------------------
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-vsnip"
  use { "tzachar/cmp-tabnine", after = "nvim-cmp", run = 'bash ./install.sh' }



  --------------------------------------------------------------------------------
  -- jump in text
  --------------------------------------------------------------------------------
  use "phaazon/hop.nvim"

  --------------------------------------------------------------------------------
  -- end
  --------------------------------------------------------------------------------

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
