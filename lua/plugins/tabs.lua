return {
    "nanozuki/tabby.nvim",
    config = function()
        require('tabby').setup({ 'active_wins_at_tail' })
    end,
};
