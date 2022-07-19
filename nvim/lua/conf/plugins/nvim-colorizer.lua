-- https://github.com/norcalli/nvim-colorizer.lua
-- 本文件用来显示特定RGB值的颜色

local M = {
    safe_requires = {
        { "colorizer" },
    },
}

function M.before() end

function M.load()

    local opts = {
        css = true,
    }

    M.colorizer.setup({
        "*",
        css = opts,
        javascript = opts,
        typescript = opts,
        vue = opts,
    })
end

function M.after()
    vim.cmd("ColorizerReloadAllBuffers")
end

return M
