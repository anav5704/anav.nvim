return {
    "michaelrommel/nvim-silicon",
    cmd = "Silicon",
    main = "nvim-silicon",
    config = function()
        require('nvim-silicon').setup({
            pad_horiz = 100,
            pad_vert = 100,
            background = "#00000000",
            font = "JetBrainsMono Nerd Font=34",
            theme = "gruvbox-dark",
            shadow_blur_radius = 0,
            shadow_offset_x = 8,
            shadow_offset_y = 8,
            shadow_color = nil,
            to_clipboard = true,
            window_title = nil,
            no_window_controls = true,
            no_line_number = true,
            output = "C:/users/anavk/code/screenshots/silicon_" .. os.date("%Y%m%d_%H%M%S") .. ".png",
        })
    end
}

