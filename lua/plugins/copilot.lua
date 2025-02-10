return {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
        vim.g.copilot_enabled = false

        _G.ToggleCopilot = function()
            local copilot_status = vim.g.copilot_enabled
            if copilot_status then
                vim.cmd("Copilot disable")
                print("Copilot Disabled")
            else
                vim.cmd("Copilot enable")
                print("Copilot Enabled")
            end
        end

        vim.api.nvim_set_keymap("n", "<leader>c", ":lua ToggleCopilot()<CR>", { noremap = true, silent = true })
    end
}

