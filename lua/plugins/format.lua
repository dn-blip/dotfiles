---@module 'lazy'
---@type LazySpec
return {
    'nvimtools/none-ls.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvimtools/none-ls-extras.nvim',
    },

    event = { 'BufWinEnter', 'BufReadPost' },
    config = function()
        local null_ls = require('null-ls')
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua.with({
                    extra_args = {
                        '--column-width=120',
                        '--indent-type=Spaces',
                        '--indent-width=4',
                        '--quote-style=AutoPreferSingle',
                        '--line-endings=Unix',
                    },
                }),
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.clang_format,
            },
        })
    end,
}
