local M = {}

M.base_30 = {
    white = "#FFFFFF",
    darker_black = "#1A1A1A",
    black = "#202020", -- nvim bg
    black2 = "#2C2C2C",
    one_bg = "#323232", -- real bg of statusline and cmdline
    one_bg2 = "#3C3C3C",
    one_bg3 = "#464646",
    grey = "#505050",
    grey_fg = "#5A5A5A",
    grey_fg2 = "#646464",
    light_grey = "#6E6E6E",
    red = "#FF5F5F",
    baby_pink = "#FF87AF",
    pink = "#FF6FCF",
    line = "#383838", -- for lines like vertsplit
    green = "#87D75F",
    vibrant_green = "#AFFF87",
    blue = "#5FAFFF",
    nord_blue = "#6CB6EB",
    yellow = "#FFFF87",
    sun = "#FFD75F",
    purple = "#AF87FF",
    dark_purple = "#875FFF",
    teal = "#5FD7AF",
    orange = "#FFAF5F",
    cyan = "#5FFFFF",
    statusline_bg = "#2C2C2C",
    lightbg = "#383838",
    pmenu_bg = "#5FAFFF",
    folder_bg = "#5FAFFF",
}

M.base_16 = {
    base00 = "#202020", -- Background
    base01 = "#2C2C2C", -- Lighter Background (status bars)
    base02 = "#323232", -- Selection Background
    base03 = "#383838", -- Comments
    base04 = "#464646", -- Dark Foreground (status bars)
    base05 = "#FFFFFF", -- Default Foreground
    base06 = "#D0D0D0", -- Light Foreground
    base07 = "#E0E0E0", -- Light Background
    base08 = "#FF5F5F", -- Variables, Tags
    base09 = "#FFAF5F", -- Integers, Boolean
    base0A = "#FFFF87", -- Constants
    base0B = "#87D75F", -- Strings
    base0C = "#5FFFFF", -- Support
    base0D = "#5FAFFF", -- Functions
    base0E = "#AF87FF", -- Keywords
    base0F = "#FF6FCF", -- Deprecated
}

M.type = "dark"

M = require("base46").override_theme(M, "eva")

return M
