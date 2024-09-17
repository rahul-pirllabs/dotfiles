return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope_actions = require("telescope.actions")
        require("telescope").setup(
            {
                defaults = {
                    -- Default configuration for telescope goes here:
                    -- config_key = value,
                    mappings = {
                        i = {
                            -- map actions.which_key to <C-h> (default: <C-/>)
                            -- actions.which_key shows the mappings for your picker,
                            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                            ["<C-h>"] = "which_key",
                            ["<C-\\>"] = telescope_actions.select_vertical,
                        }
                    }
                },
                pickers = {
                    -- Default configuration for builtin pickers goes here:
                    -- picker_name = {
                    --   picker_config_key = value,
                    --   ...
                    -- }
                    -- Now the picker_config_key will be applied every time you call this
                    -- builtin picker
                },
                extensions = {
                    -- Your extension configuration goes here:
                    -- extension_name = {
                    --   extension_config_key = value,
                    -- }
                    -- please take a look at the readme of the extension you want to configure
                    fzf
                }
            })
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep >") });
        end)
        vim.keymap.set('n', '<leader>pws', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', '<leader>pwd', builtin.lsp_dynamic_workspace_symbols, {})
        vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})
        vim.keymap.set('n', '<leader>pgd', builtin.lsp_definitions, {})
        vim.keymap.set('n', '<leader>prr', builtin.lsp_references, {})
        vim.keymap.set('n', '<C-s>', builtin.spell_suggest, {})
        vim.keymap.set('n', '<C-w>w', function() require('telescope').extensions.git_worktree.git_worktrees() end)
        vim.keymap.set('n', '<C-w>a', function() require('telescope').extensions.git_worktree.create_git_worktree() end)

    end
}


