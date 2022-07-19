-- https://github.com/uga-rosa/translate.nvim

local api = require("utils.api")
local options = require("core.options")

local M = {
    safe_requires = {
        { "translate" },
    },
    replace_char = {
        ["u003d"] = "=",
        ["＃"] = "#",
    },
}

function M.before() end

function M.load()
    M.translate.setup({
        default = {
            command = "translate_shell",
            output = "floating",
            parse_before = "trim",
            parse_after = "replace_symbols",
        },
        preset = {
            output = {
                split = {
                    min_size = 8,
                },
                floating = {
                    border =  options.float_border and "single" or "none",
                },
            },
        },
        parse_after = {
            replace_symbols = {
                cmd = function(lines)
                    -- replace some special symbols
                    for i, line in ipairs(lines) do
                        for char, rep in pairs(M.replace_char) do
                            if line:match(char) then
                                lines[i] = line:gsub(char, rep)
                            end
                        end
                    end

                    return lines
                end,
            },
        },
    })
end

function M.after() end

return M
