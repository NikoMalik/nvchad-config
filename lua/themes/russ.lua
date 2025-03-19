local M = {}

M.base_16 = {
    base00 = "#1a1a1a",
    base01 = "#222222",
    base02 = "#2a2a2a",

    base03 = "#444444",
    base04 = "#555555",
    base05 = "#cccccc",
    base06 = "#f0f0f0",
    base07 = "#dddddd",

    base08 = "#cccccc",
    base09 = "#cccccc",
    base0A = "#cccccc",

    base0B = "#cccccc",
    base0C = "#cccccc",
    base0D = "#cccccc",

    base0E = "#cccccc",
    base0F = "#cccccc",
}

M.base_30 = {
    white = "#cccccc",
    darker_black = "#141414",

    black = M.base_16.base00,

    black2 = "#1e1e1e",
    one_bg = "#242424",
    one_bg2 = "#2e2e2e",
    one_bg3 = "#383838",

    grey = "#505050",
    grey_fg = "#606060",
    grey_fg2 = "#6e6e6e",

    light_grey = "#808080",
    red = "#cccccc",
    baby_pink = "#cccccc",
    pink = "#cccccc",

    line = "#363636",

    green = "#cccccc",
    vibrant_green = "#cccccc",
    nord_blue = "#cccccc",
    blue = "#cccccc",
    yellow = "#cccccc",

    sun = "#cccccc",
    purple = "#cccccc",
    dark_purple = "#cccccc",

    teal = "#cccccc",
    orange = "#cccccc",

    cyan = "#cccccc",
    statusline_bg = "#1f1f1f",
    lightbg = "#2a2a2a",
    pmenu_bg = "#cccccc",
    folder_bg = "#cccccc",
}

M.polish_hl = {

    ["@comment"] = { fg = "#888888", italic = true },
    ["@keyword"] = { fg = M.base_16.base05 },
    ["@function"] = { fg = M.base_16.base05 },
    ["@string"] = { fg = M.base_16.base05 },
    ["@type"] = { fg = M.base_16.base05 },
    ["@variable"] = { fg = M.base_16.base05 },
    ["@number"] = { fg = M.base_16.base05 },
    ["@operator"] = { fg = M.base_16.base05 },
    ["@punctuation"] = { fg = M.base_16.base05 },

    CursorLine = { bg = M.base_30.black2 },
    Visual = { bg = M.base_30.one_bg3 },

    MatchParen = { bg = M.base_30.one_bg2, underline = true },

    DiagnosticError = { fg = M.base_16.base05 },
    DiagnosticWarn = { fg = M.base_16.base05 },

    DiagnosticInfo = { fg = M.base_16.base05 },

    DiagnosticHint = { fg = M.base_16.base05 },

    GitSignsAdd = { fg = M.base_16.base05 },
    GitSignsChange = { fg = M.base_16.base05 },
    GitSignsDelete = { fg = M.base_16.base05 },
}

M.type = "dark"

vim.api.nvim_set_hl(0, "Whitespace", { fg = M.base_30.grey_fg })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = M.base_30.white, bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = M.base_30.grey })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = M.base_30.one_bg })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = M.base_30.grey_fg, bg = M.base_30.one_bg })

return require("base46").override_theme(M, "russ")
