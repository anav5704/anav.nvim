return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        }, 
        config = function()
            local cmp = require('cmp')
            local luasnip = require('luasnip')

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' },
                    { name = 'cmdline' },
                }),
                window = {
                    completion = {
                        winhighlight = "Normal:Pmenu",
                        scrollbar = false,
                    },
                },
            })

            cmp.setup({
                window = {
                    completion = {
                        winhighlight = "Normal:Pmenu",
                        scrollbar = false,
                    },
                    documentation = {
                        winhighlight = "Normal:Pmenu",
                    },
                },
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp', priority = 1000 },
                    { name = 'luasnip', priority = 750 },
                    { name = 'buffer', priority = 500 },
                    { name = 'path', priority = 250 },
                }),
            })
        end,
    }
}
