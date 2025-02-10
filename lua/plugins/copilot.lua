return {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
        vim.g.copilot_enabled = false
    end
}

