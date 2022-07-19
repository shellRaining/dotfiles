-- 用户可以自行设置的小玩意

local api = require("utils.api")

local options = {
    -- whether to enable transparent background
    transparent = true,
    -- whether to show winbar
    show_winbar = true,
    -- whether to add a border to the floating window
    float_border = true,
    -- specify the lint configuration file
    lint_directory = api.path.join(vim.fn.stdpath("config"), "lint"),
    -- configuration file path for user code snippets
    snippets_directory = api.path.join(vim.fn.stdpath("config"), "snippets"),
    -- download the address of the plugin, treesitter parser, lsp server
    download_source = "https://github.com/",
    -- download_source = "https://hub.fastgit.xyz/",
}

return options
