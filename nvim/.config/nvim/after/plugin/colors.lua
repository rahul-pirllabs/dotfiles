function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    vim.g.gruvbox_contrast_dark = "hard"
    vim.g.gruvbox_invert_selection = '0'

    --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

--ColorMyPencils("gruvbox")
ColorMyPencils("borlandp")
