return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {
                'williamboman/mason.nvim', config = true
            },
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/cmp-nvim-lsp', 
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
             local servers = { "ts_ls", "gopls", "jsonls", "cssls", "html", "astro", "prismals", "tailwindcss" }

            require('mason').setup({
                ui = {
                    border = "rounded",
                    width = 0.8,
                    height = 0.8,
                }
            })

            require('mason-lspconfig').setup({
                ensure_installed = servers
            })

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')

            for _, server in ipairs(servers) do
                lspconfig[server].setup {
                    capabilities = capabilities,
                }
            end
        end,
    },
}

