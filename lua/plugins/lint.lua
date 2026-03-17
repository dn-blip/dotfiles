---@module 'lazy'
---@type LazySpec
return {
    'mfussenegger/nvim-lint',
    config = function()
        -- diagnostic config for nvim-lint
        local diagnostics = {
            underline = true,
            virtual_text = true,
            severity_sort = true,
            update_in_insert = false,

            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = '󰅚 ',
                    [vim.diagnostic.severity.WARN] = '󰅚 ',
                    [vim.diagnostic.severity.INFO] = '󰅚 ',
                    [vim.diagnostic.severity.HINT] = '󰌶 ',
                },
                numhl = {
                    [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
                    [vim.diagnostic.severity.WARN] = 'WarningMsg',
                },
            },
        }
        vim.diagnostic.config(diagnostics)

        require('lint').linters_by_ft = {
            lua = { 'selene' },
        }
    end,
}
