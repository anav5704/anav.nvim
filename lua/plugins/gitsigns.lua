return {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = function()
        require("gitsigns").setup({
            signs = {
                add          = { text = "│" },
                change       = { text = "│" },
                delete       = { text = "|" },
                topdelete    = { text = '|' },
                changedelete = { text = '|' },
                untracked    = { text = "┆" },
            },
            signcolumn = true,
            numhl      = false,
            linehl     = false,
            word_diff  = false,
            current_line_blame = false,
            watch_gitdir = {
                interval = 1000,
                follow_files = true
            },
            attach_to_untracked = true,
            update_debounce = 200,
            status_formatter = nil,
            max_file_length = 40000,
            preview_config = {
                border = "rounded",
                style = "minimal",
                relative = "cursor",
                row = 0,
                col = 1
            },
            yadm = { enable = false },
        })
    end,
}
