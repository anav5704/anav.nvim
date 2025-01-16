return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    configure = function()
        require('telescope').setup{
            defaults = {
                 cwd = vim.fn.getcwd(),   
                file_ignore_patterns = {
                    "node_modules",
                    ".git",
                    ".next",
                    ".astro",
                    "dist",
                }
            }
        }
    end,
}
