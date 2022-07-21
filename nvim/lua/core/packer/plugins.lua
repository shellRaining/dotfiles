return {
  --------------------------------------------------------------------------------
  -- packer自身必备
  --------------------------------------------------------------------------------
  ["wbthomason/packer.nvim"] = {},
  ["rcarriga/nvim-notify"] = {},
  ["kyazdani42/nvim-web-devicons"] = { module = "nvim-web-devicons",},
  ["nvim-lua/plenary.nvim"] = { module = "plenary",},

  --------------------------------------------------------------------------------
  -- editor enhance
  -- which key nvim 由于存在一些bug暂不使用
  --------------------------------------------------------------------------------
  ["windwp/nvim-autopairs"] = { event = { "InsertEnter" }, },
  ["kevinhwang91/nvim-hlslens"] = { module = "hlslens", },
  ["kristijanhusak/vim-carbon-now-sh"] = { cmd = { "CarbonNowSh" },},
  ["uga-rosa/translate.nvim"] = { cmd = { "Translate" },},


  --------------------------------------------------------------------------------
  -- UI
  -- WARN: gitsigns会有和自定义的setting.lua有一些冲突，详情请见源文件
  --------------------------------------------------------------------------------
  ["askfiy/catppuccin"] = {},
  ["lewis6991/gitsigns.nvim"] = { event = { "BufRead", "BufNewFile" }, },
  ["akinsho/bufferline.nvim"] = { events = { "BufNewFile", "BufRead", "TabEnter" },},
  ["nvim-lualine/lualine.nvim"] = {},
  ["norcalli/nvim-colorizer.lua"] = {},
  ["RRethy/vim-illuminate"] = { event = { "BufRead", "BufNewFile" }, },
  ["kyazdani42/nvim-tree.lua"] = { cmd = { "NvimTreeToggle", "NvimTreeFindFile" },},
  ["mbbill/undotree"] = { event = { "BufRead", "BufNewFile" },},
  ["nvim-lualine/lualine.nvim"] = {},
  ["akinsho/toggleterm.nvim"] = { module = "toggleterm", },

  --------------------------------------------------------------------------------
  -- lsp
  --------------------------------------------------------------------------------
  -- ["neovim/nvim-lspconfig"] = {},
  -- ["williamboman/nvim-lsp-installer"] = {},
  -- ["stevearc/aerial.nvim"] = {},
  -- ["jose-elias-alvarez/null-ls.nvim"] = { after = { "nvim-lsp-installer" }, },
  -- ["kosayoda/nvim-lightbulb"] = {},
  -- ["ray-x/lsp_signature.nvim"] = {},

  --------------------------------------------------------------------------------
  -- treesitter
  --------------------------------------------------------------------------------
  ["nvim-treesitter/nvim-treesitter"] = { module = "nvim-treesitter", run = ":TSUpdate",},
  ["lukas-reineke/indent-blankline.nvim"] = {},
  ["p00f/nvim-ts-rainbow"] = {},
  ["lewis6991/spellsitter.nvim"] = {},
  ["windwp/nvim-ts-autotag"] = {},
  ["JoosepAlviste/nvim-ts-context-commentstring"] = {},
  ["numToStr/Comment.nvim"] = { keys = { "gb", "gc" }, module = { "Comment" },},
  ["tpope/vim-surround"] = {},

  --------------------------------------------------------------------------------
  -- telescope
  --------------------------------------------------------------------------------
  ["nvim-telescope/telescope.nvim"] = {},
  ["folke/todo-comments.nvim"] = {},
  ["ahmedkhalf/project.nvim"] = {},

  --------------------------------------------------------------------------------
  -- cmp
  -- WARN: 如果需要tabnine请手动到目录下运行脚本，其占用内存过大
  --------------------------------------------------------------------------------
  ["rafamadriz/friendly-snippets"] = { event = { "InsertEnter", "CmdlineEnter" }, },
  ["hrsh7th/vim-vsnip"] = {},
  ["hrsh7th/nvim-cmp"] = {},
  ["hrsh7th/cmp-buffer"] = {},
  ["hrsh7th/cmp-path"] = {},
  ["hrsh7th/cmp-cmdline"] = {},
  ["hrsh7th/cmp-nvim-lsp"] = {},
  ["hrsh7th/cmp-vsnip"] = {},
  ["tzachar/cmp-tabnine"] = { run = "./install.sh", after = { "nvim-cmp" },},


  --------------------------------------------------------------------------------
  -- jump in text
  --------------------------------------------------------------------------------
  -- TODO: 关于f的用法还有存疑
  ["phaazon/hop.nvim"] = { cmd = { "HopWord", "HopLine", "HopChar1", "HopChar1CurrentLine" },},
}
