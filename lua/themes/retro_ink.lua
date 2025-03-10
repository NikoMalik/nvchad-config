local M = {}

M.base_16 = {
    base00 = "#1F1F1F",
    base01 = "#292929",
    base02 = "#333333",
    base03 = "#6E6E6E",
    base04 = "#787878",
    base05 = "#D8D8C8",
    base06 = "#E4E4D4",
    base07 = "#ECE6DA",

    base08 = "#A07A75",
    base09 = "#C0A070",
    base0A = "#8A9D7D",
    base0B = "#7D9D8A",

    base0C = "#7A918D",
    base0D = "#6D8792",
    base0E = "#9D8A7D",
    base0F = "#757575",
}

M.base_30 = {
    white = M.base_16.base05,

    darker_black = "#191919",
    black = M.base_16.base00,
    black2 = "#232323",
    one_bg = "#2D2D2D",
    one_bg2 = "#373737",
    one_bg3 = "#414141",

    grey = "#666666",
    grey_fg = "#7A7A7A",
    grey_fg2 = "#848484",

    light_grey = "#969696",
    red = M.base_16.base08,
    baby_pink = "#B08A85",
    pink = "#BD968F",

    line = "#3D3D3D",

    green = M.base_16.base0B,

    vibrant_green = "#85A992",
    nord_blue = M.base_16.base0D,
    blue = M.base_16.base0D,

    yellow = M.base_16.base09,
    sun = "#D0B080",
    purple = M.base_16.base0E,
    dark_purple = "#8A776D",

    teal = M.base_16.base0C,
    orange = M.base_16.base09,

    cyan = M.base_16.base0C,
    statusline_bg = "#252525",
    lightbg = "#2F2F2F",
    pmenu_bg = "#6D8792",
    folder_bg = "#7D9D8A",
}

M.polish_hl = {
    ["@comment"] = { fg = M.base_16.base03, italic = true },
    ["@keyword"] = { fg = M.base_16.base0A, bold = true },

    ["@function"] = { fg = M.base_16.base0D, underline = true },
    ["@string"] = { fg = M.base_16.base0B },
    ["@number"] = { fg = M.base_16.base09, bold = true },
    ["@type"] = { fg = M.base_16.base0C, italic = true },

    CursorLine = { bg = "#292929" },
    Visual = { bg = "#383838" },
    LineNr = { fg = M.base_16.base03 },
    MatchParen = { bg = "#3F3F3F", fg = M.base_16.base07 },

    DiagnosticError = { fg = M.base_16.base08 },
    DiagnosticWarn = { fg = M.base_16.base09 },
    DiagnosticInfo = { fg = M.base_16.base0D },
    DiagnosticHint = { fg = M.base_16.base0C },
}

M.type = "dark"

vim.api.nvim_set_hl(0, "Normal", {
    fg = M.base_30.white,

    bg = M.base_30.black,
    blend = 5,
})

return require("base46").override_theme(M, "vintage_plus")
