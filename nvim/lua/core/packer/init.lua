local api = require("utils.api")
-- local aux_lsp = require("utils.aux.lsp")
local options = require("core.options")
local plugins_installer_table = require("core.packer.plugins")

-- 确保packer安装
Packer_bootstrap = (function()
    local packer_install_path = api.path.join(vim.fn.stdpath("data"), "site/pack/packer/start/packer.nvim")

    ---@diagnostic disable-next-line: missing-parameter
    if vim.fn.empty(vim.fn.glob(packer_install_path)) > 0 then
        local rtp_addition = string.format("%s/site/pack/*/start/*", vim.fn.stdpath("data"))
        if not string.find(vim.o.runtimepath, rtp_addition) then
            vim.o.runtimepath = string.format("%s,%s", rtp_addition, vim.o.runtimepath)
        end

        vim.notify("Download packer ...", "INFO", { title = "Packer" })

        return vim.fn.system({
            "git",
            "clone",
            "--depth",
            "1",
            "https://github.com/wbthomason/packer.nvim",
            packer_install_path,
        })
    end
end)()

local packer = require("packer")

packer.init({
    git = {
        default_url_format = options.download_source .. "%s",
    },
})

-- 使用特定插件
packer.startup({
    function(use)
        for plug_name, plug_config in pairs(plugins_installer_table) do
            plug_config = vim.tbl_deep_extend("force", { plug_name }, plug_config)
            local plug_file_name = plug_config.as or string.match(plug_name, "/([%w%-_]+).?")

            local plug_file_load_path = api.path.join(
                "conf",
                "plugins",
                string.format("%s", plug_file_name:lower())
            )

            local plug_file_disk_path = api.path.join(
                vim.fn.stdpath("config"),
                "lua",
                string.format("%s.lua", plug_file_load_path)
            )

            if api.path.exists(plug_file_disk_path) then
                plug_config.setup = string.format("require('%s').before()", plug_file_load_path)
                plug_config.config = string.format(
                    [[
                         require('utils.api').safe_load(require('%s'))
                         require('%s').load()
                         require('%s').after()
                         ]],
                    plug_file_load_path,
                    plug_file_load_path,
                    plug_file_load_path
                )
            end

            use(plug_config)
        end
        if Packer_bootstrap then
            packer.sync()
        end
    end,
    config = { display = { open_fn = require("packer.util").float } },
})

local packer_user_config = vim.api.nvim_create_augroup("packer_user_config", { clear = true })

return packer
