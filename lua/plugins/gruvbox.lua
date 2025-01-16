return {
    "ellisonleao/gruvbox.nvim",

    config = function()
        vim.cmd.colorscheme "gruvbox"
        vim.api.nvim_set_hl(0, "NormalFloat", {
            fg = "none",
            bg = "none",
        }) 
    end,
}
