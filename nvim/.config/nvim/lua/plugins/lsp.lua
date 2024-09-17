return {
    { 'neovim/nvim-lspconfig' },
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({})
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig()
            require('mason-lspconfig').setup({
                ensure_installed = { 'ruff', 'lua_ls' },
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end,
                }
            })
        end
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.on_attach(function(client, bufnr)
                local opts = { buffer = bufnr, remap = false }

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "<F4>", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<F3>", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
                vim.keymap.set({ 'n', 'x' }, '<leader>f', function()
                    local filetype = vim.bo.filetype
                    if filetype == 'python' then
                        vim.cmd('!black %')
                    else
                        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
                    end
                end, opts)
            end)

            lsp_zero.format_on_save({
                format_opts = {
                    async = false,
                    timeout = 10000,
                },
                servers = {
                    ['black'] = { "python" },
                    ['lua-language-server'] = { "lua" },
                }
            })
        end
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require("cmp")
            local lsp_zero = require('lsp-zero')
            local cmp_select = { behavior = cmp.SelectBehavior.Select }
            cmp.setup({
                sources = {
                    { name = 'path' },
                    { name = 'nvim_lsp' },
                    { name = 'nvim_lua' },
                    { name = 'luasnip', keyword_length = 2 },
                    { name = 'buffer',  keyword_length = 3 },
                },
                formatting = lsp_zero.cmp_format(),
                mapping = cmp.mapping.preset.insert({
                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-Space>'] = cmp.mapping.complete(),
                })
            })
        end
    },
    { 'L3MON4D3/LuaSnip' },
    -- Linter
    {
        "nvimdev/guard.nvim",
        -- Builtin configuration, optional
        dependencies = {
            "nvimdev/guard-collection",
        },
        config = function()
            local ft = require("guard.filetype")
            ft("python"):fmt("ruff")
                :lint("flake8")
            require("guard").setup({
                fmt_on_save = true,
                lsp_as_default_foramtter = false,
            })
        end
    },
}
