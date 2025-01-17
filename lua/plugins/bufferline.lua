return {
    "akinsho/bufferline.nvim", 
    priority = 1000,
    version = "*", 
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "ellisonleao/gruvbox.nvim",
    },
    config = function() 
        require("bufferline").setup({
            options = {
                show_buffer_close_icons = false,
            },
            highlights = {
                buffer_selected = {
                    bold = false,
                    italic = false,
                },
            },
        })
    end
}
