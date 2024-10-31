require("nvchad.options")

-- require("indent_blankline").setup{
--   char = "",
--   show_traling_blankline_indent = false,
--   show_first+indent_level = false,
-- }
--

-- require("nvim-treesitter.configs").setup({
--     highlight = {
--         enable = true,
--         disable = { "indent" },
--     },
--     indent = {
--         enable = true,
--     },
-- })
--

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.wrap = false
o.sidescroll = 1

vim.diagnostic.config({
    virtual_text = true,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
