-- https://github.com/phaazon/hop.nvim

local api = require("utils.api")

local M = {
    safe_requires = {
        { "hop" }
    }
}

function M.before() end

function M.load()
    M.hop.setup({
        { keys = "qwertyuiopasdfghjklzxcvbnm" },
    })
end

function M.after() end

return M
