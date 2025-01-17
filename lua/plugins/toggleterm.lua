return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
        open_mapping = [[<F12>]],
        insert_mappings = true,
        start_in_insert = true,
        shell = "pwsh.exe",
        close_on_exit = true,
        direction = "float",
        float_opts = {
            border = "curved",
            width = function()
                return math.ceil(vim.o.columns * 0.8)
            end,
            height = function()
                return math.ceil(vim.o.lines * 0.8)
            end,
        }
    }
}

