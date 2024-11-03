require "nvchad.autocmds"
--
local autocmd = vim.api.nvim_create_autocmd

autocmd("TermOpen", {
    command = "setlocal signcolumn=no",
})

vim.api.nvim_create_autocmd("VimResized", {
    group = vim.api.nvim_create_augroup("resize_splits", { clear = true }),
    callback = function()
        local current_tab = vim.fn.tabpagenr()
        vim.cmd "tabdo wincmd ="
        vim.cmd("tabnext " .. current_tab)
    end,
})
