
-- https://github.com/kevinhwang91/nvim-hlslens

local api = require("utils.api")

local M = {
    safe_requires = {
        {"hlslens"}
    }
}

function M.before() end

function M.load()
    M.hlslens.setup({
        -- automatically clear search results
        calm_down = true,
        -- set to the nearest match to add a shot
        nearest_only = true,
    })
end

function M.after() end

return M
