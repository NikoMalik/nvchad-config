local M = {}

M.base_16 = {
    base00 = "#ffffea",
    base01 = "#f0f0d8",
    base02 = "#e0e0c8",
    base03 = "#444444",
    base04 = "#606060",
    base05 = "#000000",
    base06 = "#333333",
    base07 = "#FFFFFF",

    base08 = "#000000",
    base09 = "#000000",
    base0A = "#000000",
    base0B = "#000000",
    base0C = "#000000",
    base0D = "#000000",
    base0E = "#000000",
    base0F = "#000000",
}

M.base_30 = {
    white = "#000000",
    darker_black = "#f0f0d8",
    black = "#ffffea",
    black2 = "#e0e0c8",
    one_bg = "#d0d0b8",
    one_bg2 = "#c0c0a8",
    one_bg3 = "#b0b098",

    grey = "#808080",
    grey_fg = "#707070",
    grey_fg2 = "#606060",
    light_grey = "#909090",

    red = "#808080",
    baby_pink = "#808080",
    pink = "#808080",
    line = "#e0e0c8",
    green = "#808080",
    vibrant_green = "#808080",
    nord_blue = "#000000",
    blue = "#000000",
    yellow = "#808080",
    sun = "#808080",
    purple = "#808080",
    dark_purple = "#808080",
    teal = "#808080",
    orange = "#808080",
    cyan = "#808080",

    statusline_bg = "#e0e0c8",
    lightbg = "#d0d0b8",
    pmenu_bg = "#c0c0a8",
    folder_bg = "#000000",
}

M.polish_hl = {
    ["@comment"] = { fg = "#888888", italic = true },

    ["@keyword"] = { fg = "#000000" },
    ["@function"] = { fg = "#000000" },
    ["@string"] = { fg = "#000000" },
    ["@type"] = { fg = "#000000" },
    ["@variable"] = { fg = "#000000" },
    ["@number"] = { fg = "#000000" },
    ["@operator"] = { fg = "#000000" },
    ["@punctuation"] = { fg = "#000000" },

    CursorLine = { bg = "#e0e0c8" },
    Visual = { bg = "#d0d0b8" },
    MatchParen = { bg = "#c0c0a8", underline = true },

    DiagnosticError = { fg = "#000000" },
    DiagnosticWarn = { fg = "#000000" },
    DiagnosticInfo = { fg = "#000000" },
    DiagnosticHint = { fg = "#000000" },

    -- Git
    GitSignsAdd = { fg = "#808080" },
    GitSignsChange = { fg = "#808080" },
    GitSignsDelete = { fg = "#808080" },
}

M.type = "light"

vim.api.nvim_set_hl(0, "Whitespace", { fg = "#707070" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#000000", bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#808080" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#eaFFFF" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#707070", bg = "#eaFFFF" })

return require("base46").override_theme(M, "notepad")
