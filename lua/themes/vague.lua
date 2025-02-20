local M = {}

M.base_30 = {
    white = "#FFFFFF",
    darker_black = "#0F0F10",
    black = "#141415",
    black2 = "#1F1F22",
    one_bg = "#1E1E22",
    one_bg2 = "#252530",
    one_bg3 = "#333738",
    grey = "#4A4A4A",
    grey_fg = "#555555",
    grey_fg2 = "#646464",
    light_grey = "#606060",
    red = "#df6882",
    baby_pink = "#df6882",
    pink = "#c48282",
    line = "#252530",
    green = "#8cb66d",
    vibrant_green = "#8cb66d",
    blue = "#b4d4cf",
    nord_blue = "#6e94b2",
    yellow = "#e8b589",
    sun = "#e0a363",
    purple = "#bb9dbd",
    dark_purple = "#9bb4bc",
    teal = "#7e98e8",
    orange = "#f3be7c",
    cyan = "#90a0b5",
    statusline_bg = "#1F1F22",
    lightbg = "#2A2A2A",
    pmenu_bg = "#405065",
    folder_bg = "#b4d4cf",
}

M.base_16 = {
    base00 = "#141415",
    base01 = "#252530",
    base02 = "#1F1F22",
    base03 = "#606079",
    base04 = "#878787",
    base05 = "#cdcdcd",
    base06 = "#e0a363",
    base07 = "#e8b589",
    base08 = "#df6882",
    base09 = "#f3be7c",
    base0A = "#c48282",
    base0B = "#8cb66d",
    base0C = "#90a0b5",
    base0D = "#b4d4cf",
    base0E = "#6e94b2",
    base0F = "#bb9dbd",
}

M.type = "dark"

M = require("base46").override_theme(M, "vague")

return M
