require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.wrap = false
o.sidescroll = 1

-- o.cmdheight = 2

o.breakindent = true
o.backup = false
o.writebackup = false
o.showtabline = 0
vim.diagnostic.config {
    virtual_text = true,
}

-- if vim.g.neovide then
--     vim.o.guifont = "GeistMono Nerd Font:h10"
--
--     vim.g.neovide_refresh_rate = 75
-- end

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
