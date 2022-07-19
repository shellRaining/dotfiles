return {
  --------------------------------------------------------------------------------
  -- packer自身必备
  --------------------------------------------------------------------------------
  ["wbthomason/packer.nvim"] = {},
  ["rcarriga/nvim-notify"] = {},
  ["kyazdani42/nvim-web-devicons"] = { module = "nvim-web-devicons",},
  ["nvim-lua/plenary.nvim"] = { module = "plenary",},
  ["kyazdani42/nvim-tree.lua"] = { cmd = { "NvimTreeToggle", "NvimTreeFindFile" },},
  ["mbbill/undotree"] = { event = { "BufRead", "BufNewFile" },},
  ["nvim-lualine/lualine.nvim"] = {},

  --------------------------------------------------------------------------------
  -- editor enhance
  --------------------------------------------------------------------------------
  ["windwp/nvim-autopairs"] = { event = { "InsertEnter" }, },


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

  --------------------------------------------------------------------------------
  -- lsp
  --------------------------------------------------------------------------------
  ["neovim/nvim-lspconfig"] = {},
  ["williamboman/nvim-lsp-installer"] = {},
  ["kosayoda/nvim-lightbulb"] = {},
  ["ray-x/lsp_signature.nvim"] = {},

  --------------------------------------------------------------------------------
  -- treesitter
  --------------------------------------------------------------------------------
  ["nvim-treesitter/nvim-treesitter"] = { module = "nvim-treesitter", run = ":TSUpdate",},
  ["lukas-reineke/indent-blankline.nvim"] = {},
  ["p00f/nvim-ts-rainbow"] = {},
  ["lewis6991/spellsitter.nvim"] = {},
  ["windwp/nvim-ts-autotag"] = {},

  --------------------------------------------------------------------------------
  -- telescope
  --------------------------------------------------------------------------------
  ["nvim-telescope/telescope.nvim"] = {},
  ["ahmedkhalf/project.nvim"] = {},
  ["folke/todo-comments.nvim"] = {},

  --------------------------------------------------------------------------------
  -- cmp
  -- WARN: 如果需要tabnine请手动到目录下运行脚本
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
}
