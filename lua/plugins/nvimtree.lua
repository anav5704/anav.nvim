return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "ellisonleao/gruvbox.nvim",
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            view = {
                float = {
                    enable = true,
                    open_win_config = function()
                        local screen_w = vim.opt.columns:get()
                        local screen_h = vim.opt.lines:get()
                        local window_w = screen_w * 0.8
                        local window_h = screen_h * 0.8
                        local window_w_int = math.floor(window_w)
                        local window_h_int = math.floor(window_h)
                        local center_x = (screen_w - window_w) / 2
                        local center_y = ((vim.opt.lines:get() - window_h) / 2)
                        - vim.opt.cmdheight:get()
                        return {
                            border = "rounded",
                            relative = "editor",
                            row = center_y,
                            col = center_x,
                            width = window_w_int,
                            height = window_h_int,
                        }
                    end,
                },
                width = function()
                    return math.floor(vim.opt.columns:get() * 0.8)
                end,
            },
            renderer = {
                add_trailing = false,
                group_empty = true,
                highlight_git = true,
                highlight_modified = "name",
                full_name = false,
                highlight_opened_files = "none",
                root_folder_modifier = ":~",
                indent_width = 4,
                icons = {

                    show = {
                        git = false,
                        folder = false,
                        folder_arrow = false,
                    },
                },
            },
            git = {
                enable = true,
                ignore = false,
                show_on_dirs = true,
                timeout = 400,
            },
            filters = {
                dotfiles = false, 
                custom = { "^.git$", "^.next$", "^.astro$" },
            },
        })
    end,
}
