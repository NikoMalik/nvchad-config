require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both"
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.wrap = false
o.sidescroll = 1
o.scrolloff = 5
o.ignorecase = true
o.termguicolors = true
o.guicursor = ""
o.updatetime = 10
o.expandtab = true

o.modeline = true
o.cmdheight = 1

o.breakindent = true
o.backup = false
o.writebackup = false
o.hlsearch = true
o.incsearch = true

o.showtabline = 0
vim.diagnostic.config {
    virtual_text = true,
}

o.smartindent = true
o.smartcase = true

o.relativenumber = false

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local hooks = require "ibl.hooks"
hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
