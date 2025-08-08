return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.install").update({ with_sync = true })()

        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {"bash", "lua", "vim", "vimdoc", "html", "css", "c", "cpp", "java", "javascript", "typescript", "go", "tsx", "json", "yaml", "markdown", "mermaid", "astro", "svelte", "php", "blade", "prisma", "sql", "dockerfile", "nginx", "terraform"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end,
}
