local M = {}

M.base_16 = {
    base00 = "#1E1E1E",
    base01 = "#282828",
    base02 = "#323232",
    base03 = "#505050",
    base04 = "#646464",
    base05 = "#D4D4D4",
    base06 = "#E0E0E0",
    base07 = "#EAEAEA",
    base08 = "#9A7A7A",

    base09 = "#B89D7A",
    base0A = "#A8A878",
    base0B = "#8A9A8A",
    base0C = "#7A8A9A",
    base0D = "#7A8A9A",
    base0E = "#9A8A7A",
    base0F = "#6A6A6A",
}

M.base_30 = {
    white = M.base_16.base05,
    darker_black = "#181818",
    black = M.base_16.base00,
    black2 = "#222222",
    one_bg = "#2C2C2C",
    one_bg2 = "#363636",
    one_bg3 = "#404040",

    grey = "#5A5A5A",
    grey_fg = "#6E6E6E",
    grey_fg2 = "#828282",

    light_grey = "#969696",
    red = M.base_16.base08,
    baby_pink = "#AA8A8A",
    pink = "#B88A8A",
    line = "#3C3C3C",

    green = M.base_16.base0B,
    vibrant_green = "#95A595",
    nord_blue = M.base_16.base0D,
    blue = M.base_16.base0D,
    yellow = M.base_16.base09,
    sun = "#C0A878",
    purple = M.base_16.base0E,
    dark_purple = "#8A7A6A",
    teal = M.base_16.base0C,
    orange = M.base_16.base09,

    cyan = M.base_16.base0C,
    statusline_bg = "#242424",

    lightbg = "#2D2D2D",
    pmenu_bg = "#7A8A9A",
    folder_bg = "#8A9A8A",
}

M.polish_hl = {

    ["@comment"] = { fg = M.base_16.base03, italic = true },

    ["@keyword"] = { fg = M.base_16.base0E, bold = true },
    ["@function"] = { fg = M.base_16.base0D },
    ["@string"] = { fg = M.base_16.base0B },
    ["@number"] = { fg = M.base_16.base09 },

    CursorLine = { bg = "#282828" },
    LineNr = { fg = M.base_16.base03 },
}

M.type = "dark"

return require("base46").override_theme(M, "retro_crt")
