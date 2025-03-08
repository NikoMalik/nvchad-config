local M = {}

M.base_30 = {
    white = "#e0d8c5",
    darker_black = "#191919",
    black = "#1f1f1f",
    black2 = "#252525",
    one_bg = "#2a2a2a",
    one_bg2 = "#353535",
    one_bg3 = "#404040",

    grey = "#4c4c4c",
    grey_fg = "#5d5d5d",
    grey_fg2 = "#6e6e6e",

    light_grey = "#808080",
    red = "#c17b6e",

    baby_pink = "#d4a096",
    pink = "#cc8877",
    line = "#363636",

    green = "#8ca589",
    vibrant_green = "#9db29a",
    nord_blue = "#7c9ea8",

    blue = "#6d8792",
    yellow = "#d0b17a",
    sun = "#e2c48d",
    purple = "#9d8c7c",
    dark_purple = "#88776a",
    teal = "#7a918d",
    orange = "#c28b53",

    cyan = "#88b3b5",
    statusline_bg = "#242424",
    lightbg = "#2d2d2d",
    pmenu_bg = "#8ca589",
    folder_bg = "#6d8792",
}

M.base_16 = {

    base00 = "#1f1f1f",
    base01 = "#2a2a2a",

    base02 = "#353535",

    base03 = "#4c4c4c",
    base04 = "#5d5d5d",
    base05 = "#e0d8c5",
    base06 = "#ede6d6",
    base07 = "#f5f0e6",

    base08 = "#c17b6e",
    base09 = "#c28b53",
    base0A = "#d0b17a",
    base0B = "#8ca589",
    base0C = "#7a918d",
    base0D = "#6d8792",
    base0E = "#9d8c7c",

    base0F = "#a56a5d",
}

M.polish_hl = {

    TSField = { fg = M.base_30.teal },

    TSPunctDelimiter = { fg = M.base_30.grey_fg },
    TSConstant = { fg = M.base_30.purple },
    TSTag = { fg = M.base_30.orange },
    TSType = { fg = M.base_30.nord_blue, italic = true },

    ["@comment"] = { fg = M.base_16.base03, italic = true },
    ["@operator"] = { fg = M.base_30.grey_fg2 },
}

M.type = "dark"

vim.api.nvim_set_hl(0, "Normal", { fg = M.base_30.white, bg = M.base_30.black })
vim.api.nvim_set_hl(0, "LineNr", { fg = M.base_30.grey_fg, italic = true })

return require("base46").override_theme(M, "old_book")
