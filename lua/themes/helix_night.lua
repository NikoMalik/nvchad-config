local M = {}

M.base_16 = {
    base00 = "#101010",
    base01 = "#181818",
    base02 = "#282828",
    base03 = "#453d41",
    base04 = "#484848",
    base05 = "#e4e4ef",
    base06 = "#f4f4ff",
    base07 = "#ffffff",

    base08 = "#f43841",
    base09 = "#cc8c3c",
    base0A = "#ffdd33",
    base0B = "#73c936",
    base0C = "#95a99f",
    base0D = "#96a6c8",
    base0E = "#9e95c7",
    base0F = "#c73c3f",
}

M.base_30 = {
    white = M.base_16.base07,
    darker_black = "#080808",
    black = M.base_16.base00,
    black2 = "#1c1c1c",
    one_bg = M.base_16.base01,
    one_bg2 = M.base_16.base02,
    one_bg3 = M.base_16.base03,

    grey = "#52494e",
    grey_fg = "#565f73",
    grey_fg2 = "#303540",

    light_grey = "#6a6a6a",
    red = M.base_16.base08,
    baby_pink = "#ff4f58",
    pink = "#ff87af",

    line = "#3a3d41",

    green = M.base_16.base0B,
    vibrant_green = "#8ae28a",
    nord_blue = M.base_16.base0D,

    blue = M.base_16.base0D,
    yellow = M.base_16.base0A,

    sun = "#ffdd33",
    purple = M.base_16.base0E,
    dark_purple = "#887aa9",
    teal = M.base_16.base0C,
    orange = M.base_16.base09,

    cyan = M.base_16.base0C,
    statusline_bg = M.base_16.base01,

    lightbg = M.base_16.base02,
    pmenu_bg = M.base_16.base0D,
    folder_bg = M.base_16.base0B,
}

M.polish_hl = {

    ["@string"] = { fg = M.base_30.green },
    ["@type"] = { fg = M.base_30.yellow, bold = true },
    ["@type.builtin"] = { fg = M.base_30.yellow, bold = true },
    ["@comment"] = { fg = M.base_30.orange, italic = true },

    ["@keyword"] = { fg = M.base_30.yellow, bold = true },

    ["@keyword.directive"] = { fg = M.base_30.cyan },
    ["@function"] = { fg = M.base_30.teal },

    ["@function.builtin"] = { fg = M.base_30.yellow },

    CursorLine = { bg = M.base_30.black2 },
    Visual = { bg = M.base_30.line },
    MatchParen = { bg = M.base_30.one_bg3, bold = true },

    DiagnosticError = { fg = M.base_30.red },
    DiagnosticWarn = { fg = M.base_30.yellow },
    DiagnosticInfo = { fg = M.base_30.cyan },
    DiagnosticHint = { fg = M.base_30.purple },

    DiffAdd = { fg = M.base_30.green },
    DiffChange = { fg = M.base_30.yellow },
    DiffDelete = { fg = M.base_30.red },

    Cursor = { fg = M.base_30.black, bg = M.base_30.yellow },
    Pmenu = { bg = M.base_30.one_bg },
    LineNr = { fg = M.base_30.grey },
    CursorLineNr = { fg = M.base_30.yellow, bold = true },
}

M.type = "dark"

vim.api.nvim_set_hl(0, "Whitespace", { fg = M.base_30.grey_fg })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = M.base_30.sun, bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = M.base_30.grey })

return require("base46").override_theme(M, "helix_night")
