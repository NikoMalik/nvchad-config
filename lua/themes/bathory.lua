local M = {}

M.base_30 = {
    white = "#c1c1c1",
    darker_black = "#000000",
    black = "#000000", -- base00
    black2 = "#121212", -- base01
    one_bg = "#222222", -- base02
    one_bg2 = "#333333", -- base03
    one_bg3 = "#333333",

    grey = "#999999", -- base04
    grey_fg = "#999999",

    grey_fg2 = "#999999",
    light_grey = "#c1c1c1",
    red = "#5f8787", -- base08

    baby_pink = "#5f8787",
    pink = "#5f8787",

    line = "#222222",
    green = "#fbcb97", -- base0B
    vibrant_green = "#fbcb97",
    nord_blue = "#888888", -- base0D
    blue = "#888888",
    yellow = "#e78a53", -- base0A
    sun = "#e78a53",
    purple = "#999999", -- base0E

    dark_purple = "#999999",
    teal = "#aaaaaa", -- base0C
    orange = "#aaaaaa", -- base09
    cyan = "#aaaaaa",
    statusline_bg = "#121212",
    lightbg = "#222222",
    pmenu_bg = "#888888",

    folder_bg = "#888888",
}

M.base_16 = {
    base00 = "#000000",
    base01 = "#121212",

    base02 = "#222222",
    base03 = "#333333",
    base04 = "#999999",
    base05 = "#c1c1c1",
    base06 = "#999999",
    base07 = "#c1c1c1",
    base08 = "#5f8787",
    base09 = "#aaaaaa",

    base0A = "#e78a53",
    base0B = "#fbcb97",

    base0C = "#aaaaaa",
    base0D = "#888888",

    base0E = "#999999",
    base0F = "#444444",
}

M.type = "dark"

M = require("base46").override_theme(M, "black-metal-bathory")

return M
