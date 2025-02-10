return {
    "rmagatti/auto-session",
    lazy = false,
    opts = {
        suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },

        session_lens = {
            load_on_setup = true,
            theme_conf = {
                layout_config = {
                    width = 0.8,
                    height = 0.8,
                },
            },
        }
    }
}
