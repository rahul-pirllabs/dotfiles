return {
    {
        "ellisonleao/gruvbox.nvim", 
        name=gruvbox, 
        lazy=false, 
        priority=1000, 
        config = function()
            require("gruvbox").setup(
            {
                terminal_colors = true, -- add neovim terminal colors
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "hard",  -- can be "hard", "soft" or empty string
                palette_overrides = {
                },
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
                background = "dark"

            })
	    vim.cmd([[colorscheme gruvbox]])
        end
        }
    }
