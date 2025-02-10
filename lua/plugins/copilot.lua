return {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
        vim.g.copilot_enabled = false

        _G.ToggleCopilot = function()
            local copilot_status = vim.g.copilot_enabled
            if copilot_status then
                vim.cmd("Copilot disable")
                vim.g.copilot_enabled = false
                print("Copilot Disabled")
            else
                vim.cmd("Copilot enable")
                vim.g.copilot_enabled = true
                print("Copilot Enabled")
            end
        end

        vim.api.nvim_set_keymap("n", "<F10>", ":lua ToggleCopilot()<CR>", { noremap = true, silent = true })
    end
}
