-- https://github.com/hrsh7th/nvim-cmp
-- https://github.com/hrsh7th/vim-vsnip
-- https://github.com/hrsh7th/cmp-vsnip
-- https://github.com/hrsh7th/cmp-path
-- https://github.com/hrsh7th/cmp-buffer
-- https://github.com/hrsh7th/cmp-cmdline
-- https://github.com/rafamadriz/friendly-snippets
-- https://github.com/tzachar/cmp-tabnine
-- https://github.com/kristijanhusak/vim-dadbod-completion

-- WARN: manually install tabnine when there is an error in tabnine
--    TabNine is not executable
-- requires curl and unzip
--    ~.local/share/nvim/site/pack/packer/opt/cmp-tabnine/install.sh

local api = require("utils.api")
local options = require("core.options")
local aux_cmp = require("utils.aux.cmp")

local M = {
    safe_requires = {
        { "cmp" },
        { "cmp.types", "cmp_types" },
    },
    icons = api.get_icons("lsp_kind", false),
    -- complete the floating window settings of the menu
    complete_window_settings = {
        fixed = true,
        min_width = 20,
        max_width = 20,
    },
    -- whether to allow the following completion sources to have the same keywords as other completion sources
    duplicate_keywords = {
        -- allow duplicate keywords
        ["vsnip"] = 1,
        ["nvim_lsp"] = 1,
        -- do not allow duplicate keywords
        ["buffer"] = 0,
        ["path"] = 0,
        ["cmdline"] = 0,
        ["cmp_tabnine"] = 0,
        ["vim-dadbod-completion"] = 0,
    },
}

function M.before() end

function M.load()
    local cmp_opts = {
        -- uncheck auto-select (gopls)
        preselect = M.cmp_types.cmp.PreselectMode.None,
        -- Insert or Replace
        experimental = {
          ghost_text = true,
          native_menu = false,
        },
        confirmation = {
            default_behavior = M.cmp.ConfirmBehavior.Insert,
        },
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end,
        },
        -- define completion source
        sources = M.cmp.config.sources({
            { name = "vsnip" },
            { name = "nvim_lsp" },
            { name = "path" },
            { name = "buffer" },
            { name = "cmdline" },
            { name = "cmp_tabnine" },
            { name = "vim-dadbod-completion" },
        }),
        -- define buttons
        -- ??? i: valid in insert mode
        -- ??? s: valid in select mode
        -- ??? c: effective in command mode
        -- if you don't want to auto-complete when selecting, then fill in the following content in the item selection
        -- { behavior = M.cmp.SelectBehavior.Select }
        mapping = {
            ["<c-k>"] = M.cmp.mapping(M.cmp.mapping.select_prev_item(), { "i", "s", "c" }),
            ["<c-j>"] = M.cmp.mapping(M.cmp.mapping.select_next_item(), { "i", "s", "c" }),
            ["<c-u>"] = M.cmp.mapping(M.cmp.mapping.scroll_docs(-5), { "i", "s", "c" }),
            ["<c-d>"] = M.cmp.mapping(M.cmp.mapping.scroll_docs(5), { "i", "s", "c" }),
            ["<cr>"] = M.cmp.mapping(M.cmp.mapping.confirm({ select = true }), { "i" }),
            ["<Tab>"] = M.cmp.mapping(function(fallback)
              if M.cmp.visible() then
                M.cmp.select_next_item()
              elseif luasnip.expandable() then
                luasnip.expand()
              elseif jumpable(1) then
                luasnip.jump(1)
              elseif check_backspace() then
                fallback()
              elseif is_emmet_active() then
                return vim.fn["cmp#complete"]()
              else
                fallback()
              end
            end, {"c"}),
            ["<S-Tab>"] = M.cmp.mapping(function(fallback)
              if M.cmp.visible() then
                M.cmp.select_prev_item()
              elseif jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end, {"c"}),
        },
        -- define sorting rules
        sorting = {
            priority_weight = 2,
            comparators = {
                M.cmp.config.compare.offset,
                M.cmp.config.compare.exact,
                M.cmp.config.compare.score,
                aux_cmp.under_compare,
                M.cmp.config.compare.kind,
                M.cmp.config.compare.sort_text,
                M.cmp.config.compare.length,
                M.cmp.config.compare.order,
                -- aux_cmp.source_compare,
                -- aux_cmp.kind_compare,
            },
        },
        -- define the style of menu completion options
        formatting = {
            format = function(entry, vim_item)
                local kind = vim_item.kind
                local source = entry.source.name

                vim_item.kind = string.format("%s", M.icons[kind])
                vim_item.menu = string.format("<%s>", string.upper(source))
                vim_item.dup = M.duplicate_keywords[source] or 0

                -- determine if it is a fixed window size
                if M.complete_window_settings.fixed and vim.fn.mode() == "i" then
                    local label = vim_item.abbr
                    local min_width = M.complete_window_settings.min_width
                    local max_width = M.complete_window_settings.max_width
                    local truncated_label = vim.fn.strcharpart(label, 0, max_width)

                    if truncated_label ~= label then
                        vim_item.abbr = string.format("%s %s", truncated_label, "???")
                    elseif string.len(label) < min_width then
                        local padding = string.rep(" ", min_width - string.len(label))
                        vim_item.abbr = string.format("%s %s", label, padding)
                    end
                end

                return vim_item
            end,
        },
    }

    if options.float_border then
        -- define the appearance of the completion menu
        cmp_opts.window = {
            completion = M.cmp.config.window.bordered({
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
            }),
            documentation = M.cmp.config.window.bordered({
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
            }),
        }
    end

    M.cmp.setup(cmp_opts)
end

function M.after()
    -- define completion in cmd mode
    M.cmp.setup.cmdline("/", {
        sources = {
            { name = "buffer" },
        },
    })

    M.cmp.setup.cmdline("?", {
        sources = {
            { name = "buffer" },
        },
    })

    M.cmp.setup.cmdline(":", {
        sources = M.cmp.config.sources({
            { name = "path" },
            { name = "cmdline" },
        }),
    })
end

return M
