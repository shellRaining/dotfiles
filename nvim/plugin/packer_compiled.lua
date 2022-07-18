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
local package_path_str = "/home/lu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/lu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/lu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/lu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/lu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  catppuccin = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/catppuccin'))\n                         require('conf/plugins/catppuccin').load()\n                         require('conf/plugins/catppuccin').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/catppuccin",
    url = "https://github.com/askfiy/catppuccin"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tabnine"] = {
    after_files = { "/home/lu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine/after/plugin/cmp-tabnine.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["nvim-cmp"] = {
    after = { "cmp-tabnine" },
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-cmp'))\n                         require('conf/plugins/nvim-cmp').load()\n                         require('conf/plugins/nvim-cmp').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nvim-notify'))\n                         require('conf/plugins/nvim-notify').load()\n                         require('conf/plugins/nvim-notify').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/project'))\n                         require('conf/plugins/project').load()\n                         require('conf/plugins/project').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/telescope'))\n                         require('conf/plugins/telescope').load()\n                         require('conf/plugins/telescope').after()\n                         " },
    loaded = true,
    needs_bufread = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/todo-comments'))\n                         require('conf/plugins/todo-comments').load()\n                         require('conf/plugins/todo-comments').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["vim-vsnip"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/vim-vsnip'))\n                         require('conf/plugins/vim-vsnip').load()\n                         require('conf/plugins/vim-vsnip').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
require('conf/plugins/telescope').before()
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: catppuccin
time([[Setup for catppuccin]], true)
require('conf/plugins/catppuccin').before()
time([[Setup for catppuccin]], false)
time([[packadd for catppuccin]], true)
vim.cmd [[packadd catppuccin]]
time([[packadd for catppuccin]], false)
-- Setup for: todo-comments.nvim
time([[Setup for todo-comments.nvim]], true)
require('conf/plugins/todo-comments').before()
time([[Setup for todo-comments.nvim]], false)
time([[packadd for todo-comments.nvim]], true)
vim.cmd [[packadd todo-comments.nvim]]
time([[packadd for todo-comments.nvim]], false)
-- Setup for: nvim-notify
time([[Setup for nvim-notify]], true)
require('conf/plugins/nvim-notify').before()
time([[Setup for nvim-notify]], false)
time([[packadd for nvim-notify]], true)
vim.cmd [[packadd nvim-notify]]
time([[packadd for nvim-notify]], false)
-- Setup for: project.nvim
time([[Setup for project.nvim]], true)
require('conf/plugins/project').before()
time([[Setup for project.nvim]], false)
time([[packadd for project.nvim]], true)
vim.cmd [[packadd project.nvim]]
time([[packadd for project.nvim]], false)
-- Setup for: vim-vsnip
time([[Setup for vim-vsnip]], true)
require('conf/plugins/vim-vsnip').before()
time([[Setup for vim-vsnip]], false)
time([[packadd for vim-vsnip]], true)
vim.cmd [[packadd vim-vsnip]]
time([[packadd for vim-vsnip]], false)
-- Setup for: nvim-cmp
time([[Setup for nvim-cmp]], true)
require('conf/plugins/nvim-cmp').before()
time([[Setup for nvim-cmp]], false)
time([[packadd for nvim-cmp]], true)
vim.cmd [[packadd nvim-cmp]]
time([[packadd for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/telescope'))
                         require('conf/plugins/telescope').load()
                         require('conf/plugins/telescope').after()
                         
time([[Config for telescope.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
                         require('utils.api').safe_load(require('conf/plugins/catppuccin'))
                         require('conf/plugins/catppuccin').load()
                         require('conf/plugins/catppuccin').after()
                         
time([[Config for catppuccin]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/todo-comments'))
                         require('conf/plugins/todo-comments').load()
                         require('conf/plugins/todo-comments').after()
                         
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
                         require('utils.api').safe_load(require('conf/plugins/nvim-notify'))
                         require('conf/plugins/nvim-notify').load()
                         require('conf/plugins/nvim-notify').after()
                         
time([[Config for nvim-notify]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/project'))
                         require('conf/plugins/project').load()
                         require('conf/plugins/project').after()
                         
time([[Config for project.nvim]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
                         require('utils.api').safe_load(require('conf/plugins/vim-vsnip'))
                         require('conf/plugins/vim-vsnip').load()
                         require('conf/plugins/vim-vsnip').after()
                         
time([[Config for vim-vsnip]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
                         require('utils.api').safe_load(require('conf/plugins/nvim-cmp'))
                         require('conf/plugins/nvim-cmp').load()
                         require('conf/plugins/nvim-cmp').after()
                         
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-tabnine ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au CmdlineEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "CmdlineEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
