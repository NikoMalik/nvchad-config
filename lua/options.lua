require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.wrap = false
o.sidescroll = 1
o.scrolloff = 5
o.ignorecase = true

o.guicursor = ""
o.updatetime = 10

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

o.relativenumber = false

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
