local M = {}

M.base_16 = {
    base00 = "#1C1C1C",
    base01 = "#242424",
    base02 = "#2E2E2E",
    base03 = "#4A4A4A",
    base04 = "#5C5C5C",
    base05 = "#D0D0D0",
    base06 = "#D8D8D8",
    base07 = "#E0E0E0",
    base08 = "#8B8B8B",

    base09 = "#D0D0D0",
    base0A = "#7A9DAD",
    base0B = "#8B8B8B",
    base0C = "#8B8B8B",

    base0D = "#8B8B8B",
    base0E = "#7A9DAD",
    base0F = "#5C5C5C",
}

M.base_30 = {
    white = M.base_16.base05,
    darker_black = "#181818",
    black = M.base_16.base00,
    black2 = "#202020",
    one_bg = "#282828",
    one_bg2 = "#303030",
    one_bg3 = "#383838",

    grey = "#545454",
    grey_fg = "#646464",
    grey_fg2 = "#707070",

    light_grey = "#808080",
    red = M.base_16.base08,
    baby_pink = M.base_16.base08,
    pink = M.base_16.base08,
    line = "#363636",

    green = M.base_16.base0B,
    vibrant_green = M.base_16.base0B,
    nord_blue = M.base_16.base0A,
    blue = M.base_16.base0A,
    yellow = M.base_16.base09,
    sun = M.base_16.base09,
    purple = M.base_16.base0A,
    dark_purple = M.base_16.base0A,

    teal = M.base_16.base0A,
    orange = M.base_16.base09,

    cyan = M.base_16.base0A,
    statusline_bg = "#222222",
    lightbg = "#2A2A2A",
    pmenu_bg = "#7A9DAD",

    folder_bg = "#7A9DAD",
}

M.polish_hl = {
    ["@keyword"] = { fg = M.base_16.base0A, bold = true },
    ["@comment"] = { fg = M.base_16.base03, italic = true },
    ["@function"] = { fg = M.base_16.base05 },
    ["@string"] = { fg = M.base_16.base05 },
    ["@number"] = { fg = M.base_16.base05 },

    CursorLine = { bg = M.base_16.base01 },

    Visual = { bg = M.base_16.base02 },
    MatchParen = { bg = M.base_16.base02 },

    DiagnosticError = { undercurl = true, sp = M.base_16.base08 },
    DiagnosticWarn = { undercurl = true, sp = M.base_16.base04 },
}

M.type = "dark"

vim.api.nvim_set_hl(0, "Whitespace", { fg = M.base_16.base03 })
vim.api.nvim_set_hl(0, "NonText", { fg = M.base_16.base03 })

return require("base46").override_theme(M, "mono_essence")
