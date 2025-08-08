return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {
                'williamboman/mason.nvim', config = true
            },
            'williamboman/mason-lspconfig.nvim',
        },
        config = function()
            local servers = { "bashls", "lua_ls", "vimls", "clangd", "ts_ls", "jdtls", "gopls", "jsonls", "cssls", "html", "tailwindcss" , "astro", "svelte", "prismals", "marksman", "phpactor", "intelephense", "dockerls", "docker_compose_language_service", "nginx_language_server", "ansiblels", "terraformls", "sqls", "emmet_ls", "eslint", "gitlab_ci_ls"}

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

            vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })

            for _, server in ipairs(servers) do
                lspconfig[server].setup {
                    capabilities = capabilities,
                    on_attach = function(client, bufnr)
                        vim.diagnostic.config({
                            signs = false,
                        })
                    end,
                }
            end
        end,
    },
}

