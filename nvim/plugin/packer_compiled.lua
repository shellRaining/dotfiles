-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/shellraining/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/shellraining/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/shellraining/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/shellraining/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/shellraining/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    after_files = { "/home/shellraining/.local/share/nvim/site/pack/packer/opt/Comment.nvim/after/plugin/Comment.lua" },
    config = { "                         require('utils.api').safe_load(require('conf/plugins/comment'))\n                         require('conf/plugins/comment').load()\n                         require('conf/plugins/comment').after()\n                         " },
    keys = { { "", "gb" }, { "", "gc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/bufferline'))\n                         require('conf/plugins/bufferline').load()\n                         require('conf/plugins/bufferline').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/catppuccin'))\n                         require('conf/plugins/catppuccin').load()\n                         require('conf/plugins/catppuccin').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/catppuccin",
    url = "https://github.com/askfiy/catppuccin"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tabnine"] = {
    after_files = { "/home/shellraining/.local/share/nvim/site/pack/packer/opt/cmp-tabnine/after/plugin/cmp-tabnine.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/gitsigns'))\n                         require('conf/plugins/gitsigns').load()\n                         require('conf/plugins/gitsigns').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    commands = { "HopWord", "HopLine", "HopChar1", "HopChar1CurrentLine" },
    config = { "                         require('utils.api').safe_load(require('conf/plugins/hop'))\n                         require('conf/plugins/hop').load()\n                         require('conf/plugins/hop').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/indent-blankline'))\n                         require('conf/plugins/indent-blankline').load()\n                         require('conf/plugins/indent-blankline').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/lualine'))\n                         require('conf/plugins/lualine').load()\n                         require('conf/plugins/lualine').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-autopairs'))\n                         require('conf/plugins/nvim-autopairs').load()\n                         require('conf/plugins/nvim-autopairs').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-tabnine" },
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-cmp'))\n                         require('conf/plugins/nvim-cmp').load()\n                         require('conf/plugins/nvim-cmp').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-colorizer'))\n                         require('conf/plugins/nvim-colorizer').load()\n                         require('conf/plugins/nvim-colorizer').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-hlslens"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-hlslens'))\n                         require('conf/plugins/nvim-hlslens').load()\n                         require('conf/plugins/nvim-hlslens').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-notify'))\n                         require('conf/plugins/nvim-notify').load()\n                         require('conf/plugins/nvim-notify').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFindFile" },
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-tree'))\n                         require('conf/plugins/nvim-tree').load()\n                         require('conf/plugins/nvim-tree').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-treesitter'))\n                         require('conf/plugins/nvim-treesitter').load()\n                         require('conf/plugins/nvim-treesitter').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/project'))\n                         require('conf/plugins/project').load()\n                         require('conf/plugins/project').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/spellsitter'))\n                         require('conf/plugins/spellsitter').load()\n                         require('conf/plugins/spellsitter').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["telescope.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/telescope'))\n                         require('conf/plugins/telescope').load()\n                         require('conf/plugins/telescope').after()\n                         " },
    loaded = true,
    needs_bufread = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/todo-comments'))\n                         require('conf/plugins/todo-comments').load()\n                         require('conf/plugins/todo-comments').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["translate.nvim"] = {
    commands = { "Translate" },
    config = { "                         require('utils.api').safe_load(require('conf/plugins/translate'))\n                         require('conf/plugins/translate').load()\n                         require('conf/plugins/translate').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/translate.nvim",
    url = "https://github.com/uga-rosa/translate.nvim"
  },
  undotree = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/undotree'))\n                         require('conf/plugins/undotree').load()\n                         require('conf/plugins/undotree').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-carbon-now-sh"] = {
    commands = { "CarbonNowSh" },
    config = { "                         require('utils.api').safe_load(require('conf/plugins/vim-carbon-now-sh'))\n                         require('conf/plugins/vim-carbon-now-sh').load()\n                         require('conf/plugins/vim-carbon-now-sh').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/vim-carbon-now-sh",
    url = "https://github.com/kristijanhusak/vim-carbon-now-sh"
  },
  ["vim-illuminate"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/vim-illuminate'))\n                         require('conf/plugins/vim-illuminate').load()\n                         require('conf/plugins/vim-illuminate').after()\n                         " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/vim-vsnip'))\n                         require('conf/plugins/vim-vsnip').load()\n                         require('conf/plugins/vim-vsnip').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/shellraining/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim",
  ["^hlslens"] = "nvim-hlslens",
  ["^nvim%-treesitter"] = "nvim-treesitter",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^plenary"] = "plenary.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: spellsitter.nvim
time([[Setup for spellsitter.nvim]], true)
require('conf/plugins/spellsitter').before()
time([[Setup for spellsitter.nvim]], false)
time([[packadd for spellsitter.nvim]], true)
vim.cmd [[packadd spellsitter.nvim]]
time([[packadd for spellsitter.nvim]], false)
-- Setup for: vim-carbon-now-sh
time([[Setup for vim-carbon-now-sh]], true)
require('conf/plugins/vim-carbon-now-sh').before()
time([[Setup for vim-carbon-now-sh]], false)
-- Setup for: nvim-cmp
time([[Setup for nvim-cmp]], true)
require('conf/plugins/nvim-cmp').before()
time([[Setup for nvim-cmp]], false)
time([[packadd for nvim-cmp]], true)
vim.cmd [[packadd nvim-cmp]]
time([[packadd for nvim-cmp]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
require('conf/plugins/telescope').before()
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
require('conf/plugins/nvim-treesitter').before()
time([[Setup for nvim-treesitter]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
require('conf/plugins/nvim-tree').before()
time([[Setup for nvim-tree.lua]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
require('conf/plugins/gitsigns').before()
time([[Setup for gitsigns.nvim]], false)
-- Setup for: catppuccin
time([[Setup for catppuccin]], true)
require('conf/plugins/catppuccin').before()
time([[Setup for catppuccin]], false)
time([[packadd for catppuccin]], true)
vim.cmd [[packadd catppuccin]]
time([[packadd for catppuccin]], false)
-- Setup for: hop.nvim
time([[Setup for hop.nvim]], true)
require('conf/plugins/hop').before()
time([[Setup for hop.nvim]], false)
-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
require('conf/plugins/vim-illuminate').before()
time([[Setup for vim-illuminate]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
require('conf/plugins/indent-blankline').before()
time([[Setup for indent-blankline.nvim]], false)
time([[packadd for indent-blankline.nvim]], true)
vim.cmd [[packadd indent-blankline.nvim]]
time([[packadd for indent-blankline.nvim]], false)
-- Setup for: lualine.nvim
time([[Setup for lualine.nvim]], true)
require('conf/plugins/lualine').before()
time([[Setup for lualine.nvim]], false)
time([[packadd for lualine.nvim]], true)
vim.cmd [[packadd lualine.nvim]]
time([[packadd for lualine.nvim]], false)
-- Setup for: undotree
time([[Setup for undotree]], true)
require('conf/plugins/undotree').before()
time([[Setup for undotree]], false)
-- Setup for: nvim-autopairs
time([[Setup for nvim-autopairs]], true)
require('conf/plugins/nvim-autopairs').before()
time([[Setup for nvim-autopairs]], false)
-- Setup for: vim-vsnip
time([[Setup for vim-vsnip]], true)
require('conf/plugins/vim-vsnip').before()
time([[Setup for vim-vsnip]], false)
time([[packadd for vim-vsnip]], true)
vim.cmd [[packadd vim-vsnip]]
time([[packadd for vim-vsnip]], false)
-- Setup for: Comment.nvim
time([[Setup for Comment.nvim]], true)
require('conf/plugins/comment').before()
time([[Setup for Comment.nvim]], false)
-- Setup for: todo-comments.nvim
time([[Setup for todo-comments.nvim]], true)
require('conf/plugins/todo-comments').before()
time([[Setup for todo-comments.nvim]], false)
time([[packadd for todo-comments.nvim]], true)
vim.cmd [[packadd todo-comments.nvim]]
time([[packadd for todo-comments.nvim]], false)
-- Setup for: translate.nvim
time([[Setup for translate.nvim]], true)
require('conf/plugins/translate').before()
time([[Setup for translate.nvim]], false)
-- Setup for: nvim-notify
time([[Setup for nvim-notify]], true)
require('conf/plugins/nvim-notify').before()
time([[Setup for nvim-notify]], false)
time([[packadd for nvim-notify]], true)
vim.cmd [[packadd nvim-notify]]
time([[packadd for nvim-notify]], false)
-- Setup for: nvim-hlslens
time([[Setup for nvim-hlslens]], true)
require('conf/plugins/nvim-hlslens').before()
time([[Setup for nvim-hlslens]], false)
-- Setup for: nvim-colorizer.lua
time([[Setup for nvim-colorizer.lua]], true)
require('conf/plugins/nvim-colorizer').before()
time([[Setup for nvim-colorizer.lua]], false)
time([[packadd for nvim-colorizer.lua]], true)
vim.cmd [[packadd nvim-colorizer.lua]]
time([[packadd for nvim-colorizer.lua]], false)
-- Setup for: project.nvim
time([[Setup for project.nvim]], true)
require('conf/plugins/project').before()
time([[Setup for project.nvim]], false)
time([[packadd for project.nvim]], true)
vim.cmd [[packadd project.nvim]]
time([[packadd for project.nvim]], false)
-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
require('conf/plugins/bufferline').before()
time([[Setup for bufferline.nvim]], false)
time([[packadd for bufferline.nvim]], true)
vim.cmd [[packadd bufferline.nvim]]
time([[packadd for bufferline.nvim]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/spellsitter'))
                         require('conf/plugins/spellsitter').load()
                         require('conf/plugins/spellsitter').after()
                         
time([[Config for spellsitter.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/indent-blankline'))
                         require('conf/plugins/indent-blankline').load()
                         require('conf/plugins/indent-blankline').after()
                         
time([[Config for indent-blankline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/telescope'))
                         require('conf/plugins/telescope').load()
                         require('conf/plugins/telescope').after()
                         
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/lualine'))
                         require('conf/plugins/lualine').load()
                         require('conf/plugins/lualine').after()
                         
time([[Config for lualine.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/todo-comments'))
                         require('conf/plugins/todo-comments').load()
                         require('conf/plugins/todo-comments').after()
                         
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
                         require('utils.api').safe_load(require('conf/plugins/nvim-cmp'))
                         require('conf/plugins/nvim-cmp').load()
                         require('conf/plugins/nvim-cmp').after()
                         
time([[Config for nvim-cmp]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
                         require('utils.api').safe_load(require('conf/plugins/nvim-notify'))
                         require('conf/plugins/nvim-notify').load()
                         require('conf/plugins/nvim-notify').after()
                         
time([[Config for nvim-notify]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
                         require('utils.api').safe_load(require('conf/plugins/catppuccin'))
                         require('conf/plugins/catppuccin').load()
                         require('conf/plugins/catppuccin').after()
                         
time([[Config for catppuccin]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
                         require('utils.api').safe_load(require('conf/plugins/vim-vsnip'))
                         require('conf/plugins/vim-vsnip').load()
                         require('conf/plugins/vim-vsnip').after()
                         
time([[Config for vim-vsnip]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
                         require('utils.api').safe_load(require('conf/plugins/nvim-colorizer'))
                         require('conf/plugins/nvim-colorizer').load()
                         require('conf/plugins/nvim-colorizer').after()
                         
time([[Config for nvim-colorizer.lua]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/project'))
                         require('conf/plugins/project').load()
                         require('conf/plugins/project').after()
                         
time([[Config for project.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/bufferline'))
                         require('conf/plugins/bufferline').load()
                         require('conf/plugins/bufferline').after()
                         
time([[Config for bufferline.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-tabnine ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1CurrentLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar1CurrentLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Translate lua require("packer.load")({'translate.nvim'}, { cmd = "Translate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CarbonNowSh lua require("packer.load")({'vim-carbon-now-sh'}, { cmd = "CarbonNowSh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar1", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'undotree', 'vim-illuminate', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'undotree', 'vim-illuminate', 'gitsigns.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au CmdlineEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "CmdlineEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets', 'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
