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
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nv_catppuccin'))\n                         require('conf/plugins/nv_catppuccin').load()\n                         require('conf/plugins/nv_catppuccin').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/catppuccin",
    url = "https://github.com/askfiy/catppuccin"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
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
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nv_nvim-notify'))\n                         require('conf/plugins/nv_nvim-notify').load()\n                         require('conf/plugins/nv_nvim-notify').after()\n                         " },
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
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nv_project'))\n                         require('conf/plugins/nv_project').load()\n                         require('conf/plugins/nv_project').after()\n                         " },
    loaded = true,
    needs_bufread = false,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "                         require('utils.api').safe_load(require('conf/plugins/nv_telescope'))\n                         require('conf/plugins/nv_telescope').load()\n                         require('conf/plugins/nv_telescope').after()\n                         " },
    loaded = true,
    needs_bufread = true,
    path = "/home/lu/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: project.nvim
time([[Setup for project.nvim]], true)
require('conf/plugins/nv_project').before()
time([[Setup for project.nvim]], false)
time([[packadd for project.nvim]], true)
vim.cmd [[packadd project.nvim]]
time([[packadd for project.nvim]], false)
-- Setup for: catppuccin
time([[Setup for catppuccin]], true)
require('conf/plugins/nv_catppuccin').before()
time([[Setup for catppuccin]], false)
time([[packadd for catppuccin]], true)
vim.cmd [[packadd catppuccin]]
time([[packadd for catppuccin]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
require('conf/plugins/nv_telescope').before()
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: nvim-notify
time([[Setup for nvim-notify]], true)
require('conf/plugins/nv_nvim-notify').before()
time([[Setup for nvim-notify]], false)
time([[packadd for nvim-notify]], true)
vim.cmd [[packadd nvim-notify]]
time([[packadd for nvim-notify]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/nv_project'))
                         require('conf/plugins/nv_project').load()
                         require('conf/plugins/nv_project').after()
                         
time([[Config for project.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
                         require('utils.api').safe_load(require('conf/plugins/nv_catppuccin'))
                         require('conf/plugins/nv_catppuccin').load()
                         require('conf/plugins/nv_catppuccin').after()
                         
time([[Config for catppuccin]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
                         require('utils.api').safe_load(require('conf/plugins/nv_telescope'))
                         require('conf/plugins/nv_telescope').load()
                         require('conf/plugins/nv_telescope').after()
                         
time([[Config for telescope.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
                         require('utils.api').safe_load(require('conf/plugins/nv_nvim-notify'))
                         require('conf/plugins/nv_nvim-notify').load()
                         require('conf/plugins/nv_nvim-notify').after()
                         
time([[Config for nvim-notify]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
