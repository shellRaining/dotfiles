-- some options are enabled in neovim built-in, and the settings will not be repeated here
-- 关于nvim的基础设置

local setting = {
    g = {
        mapleader = " ",
    },
    opt = {
        ruler = false,
        showmode = false,
        swapfile = false,
        writebackup = false,
        -- signcolumn = "yes:1",
        signcolumn = "number",
        completeopt = "menuone,noselect",
        pumheight = 7, -- vim处于插入模式下补全菜单最大高度
        updatetime = 500,
        timeoutlen = 500,
        termguicolors = true,
        cursorline = true,
        numberwidth = 4,
        number = true,
        relativenumber = true,
        scrolloff = 21,
        mouse = "a",
        list = true,
        spell = true,
        spelllang = "en_us,cjk",
        ignorecase = true,
        smartcase = true,
        filetype = "plugin",
        foldmethod = "indent",
        foldlevel = 100,
        -- clipboard = "unnamedplus",
        smartindent = true,
        iskeyword = "@,48-57,_,192-255",
        laststatus = 3,
        linebreak = true,
        sessionoptions = "buffers,curdir,folds,help,tabpages,winsize,globals",
        fillchars = "vert:┃,horiz:━,verthoriz:╋,horizup:┻,horizdown:┳,vertleft:┫,vertright:┣,eob: ",
        smartcase = true,
        smartindent = true,
        shiftwidth = 2,
        tabstop = 2,
        softtabstop=2, -- 设置删除时候对空格的处理方式，相当于每次删除两个空格
        expandtab = true, -- 将tab视为空格
        autoindent = true,
    },
}

local disable_builtin_plugins = {
    -- "netrw",
    -- "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}

-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
-- vim.opt.listchars:append("tab:↹ ")

vim.opt.shortmess:append("sI")
vim.opt.whichwrap:append("<>[]")

for prefix, tab in pairs(setting) do
    for key, value in pairs(tab) do
        vim[prefix][key] = value
    end
end

for _, builtin_plugin in ipairs(disable_builtin_plugins) do
    vim.g["loaded_" .. builtin_plugin] = 1
end

return setting
