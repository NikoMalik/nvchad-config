local M = {}

M.base_30 = {
    white = "#ffffff",
    darker_black = "#1a1a1a",
    black = "#000000",
    black2 = "#121212",
    one_bg = "#262626",
    one_bg2 = "#303030",
    one_bg3 = "#3a3a3a",

    grey = "#444444",
    grey_fg = "#585858",
    grey_fg2 = "#6c6c6c",

    light_grey = "#808080",
    red = "#ff0000",

    baby_pink = "#ff80ff",
    pink = "#ff40ff",
    line = "#3c3c3c",

    green = "#00ff00",
    vibrant_green = "#40ff40",
    nord_blue = "#0087ff",
    blue = "#0000ff",

    yellow = "#ffff00",
    sun = "#ffd700",
    purple = "#af00ff",
    dark_purple = "#8700d7",
    teal = "#00ffff",
    orange = "#ffa500",

    cyan = "#00ffff",
    statusline_bg = "#2d2d2d",
    lightbg = "#353535",
    pmenu_bg = "#5c5cff",
    folder_bg = "#4e4e4e",
}

M.base_16 = {
    base00 = "#000000",
    base01 = "#262626",
    base02 = "#4e4e4e",
    base03 = "#585858",
    base04 = "#808080",
    base05 = "#c0c0c0",

    base06 = "#d0d0d0",
    base07 = "#ffffff",

    base08 = "#ff0000",
    base09 = "#ffa500",
    base0A = "#ffff00",
    base0B = "#00ff00",
    base0C = "#00ffff",
    base0D = "#0000ff",
    base0E = "#af00ff",
    base0F = "#ff80ff",
}

M.type = "dark"

M.polish_hl = {
    TSVariable = { fg = M.base_30.white },
    TSProperty = { fg = M.base_30.teal },
    TSFloat = { fg = M.base_30.orange },
    TSNumber = { fg = M.base_30.orange },
    TSTag = { fg = M.base_30.purple },
}

return require("base46").override_theme(M, "vim-default")
