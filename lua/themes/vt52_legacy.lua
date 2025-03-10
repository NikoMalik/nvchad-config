local M = {}

M.base_16 = {
    base00 = "#202020",
    base01 = "#2a2a2a",
    base02 = "#353535",
    base03 = "#4e4e4e",
    base04 = "#606060",
    base05 = "#cccccc",
    base06 = "#d8d8d8",
    base07 = "#e0e0e0",
    base08 = "#787878",
    base09 = "#949494",
    base0A = "#8a8a8a",
    base0B = "#707070",
    base0C = "#808080",
    base0D = "#848484",
    base0E = "#7c7c7c",
    base0F = "#585858",
}

M.base_30 = {
    white = M.base_16.base05,
    darker_black = "#181818",
    black = M.base_16.base00,
    black2 = "#242424",

    one_bg = "#2e2e2e",
    one_bg2 = "#383838",
    one_bg3 = "#424242",

    grey = "#5c5c5c",
    grey_fg = "#6c6c6c",
    grey_fg2 = "#747474",

    light_grey = "#8e8e8e",
    red = M.base_16.base08,
    baby_pink = "#787878",
    pink = "#808080",
    line = "#3a3a3a",

    green = M.base_16.base0B,
    vibrant_green = "#787878",
    nord_blue = M.base_16.base0D,
    blue = M.base_16.base0D,

    yellow = M.base_16.base09,
    sun = "#8c8c8c",
    purple = M.base_16.base0E,
    dark_purple = "#707070",
    teal = M.base_16.base0C,
    orange = M.base_16.base09,

    cyan = M.base_16.base0C,
    statusline_bg = "#282828",
    lightbg = "#323232",
    pmenu_bg = "#6c6c6c",
    folder_bg = "#787878",
}

M.polish_hl = {
    ["@comment"] = { fg = M.base_16.base03, italic = true },
    ["@keyword"] = { fg = M.base_16.base0A },
    ["@function"] = { fg = M.base_16.base0D, underline = true },
    ["@string"] = { fg = M.base_16.base0B },

    ["@number"] = { fg = M.base_16.base09 },

    Visual = { bg = "#3a3a3a" },
    CursorLine = { bg = "#282828" },
    LineNr = { fg = M.base_16.base03 },

    MatchParen = { fg = M.base_16.base05, bg = "#404040" },
}

M.type = "dark"

return require("base46").override_theme(M, "vt52_legacy")
