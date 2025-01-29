local M = {}

M.base_30 = {
    white = "#ffffff",
    black = "#1e1e1e", -- background
    darker_black = "#121212", -- slightly darker
    black2 = "#2e2e2e", -- statusline background
    one_bg = "#262626", -- editor background
    one_bg2 = "#303030",
    one_bg3 = "#3a3a3a",
    grey = "#4e4e4e",
    grey_fg = "#606060",
    grey_fg2 = "#707070",
    light_grey = "#808080",
    red = "#ff0000",
    baby_pink = "#ff87af",
    pink = "#ff00ff",
    line = "#3a3a3a", -- borderlines
    green = "#00ff00",
    vibrant_green = "#87ff5f",
    nord_blue = "#5f87af",
    blue = "#0000ff",
    seablue = "#5fafff",
    yellow = "#ffff00",
    sun = "#ffaf00",
    purple = "#8700ff",
    dark_purple = "#5f00af",
    teal = "#00afaf",
    orange = "#ff8700",
    cyan = "#00ffff",
    statusline_bg = "#262626",
    lightbg = "#3a3a3a",
    pmenu_bg = "#00ff00",
    folder_bg = "#5f00af",
}

M.base_16 = {
    base00 = "#1e1e1e", -- Default Background
    base01 = "#262626", -- Lighter Background (status bar)
    base02 = "#3a3a3a", -- Selection Background
    base03 = "#4e4e4e", -- Comments, Invisibles, Line Highlighting
    base04 = "#8a8a8a", -- Dark Foreground (status line)
    base05 = "#c6c6c6", -- Default Foreground, Caret, Delimiters
    base06 = "#e4e4e4", -- Light Foreground
    base07 = "#ffffff", -- Light Background
    base08 = "#ff0000", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = "#ff8700", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = "#ffff00", -- Classes, Markup Bold, Search Text Background
    base0B = "#00ff00", -- Strings, Inherited Class, Markup Code
    base0C = "#00ffff", -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = "#0000ff", -- Functions, Methods
    base0E = "#8700ff", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = "#ff00ff", -- Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>`
}

M.polish_hl = {
    Comment = { fg = M.base_30.grey_fg, italic = true },
    Constant = { fg = M.base_30.cyan },
    String = { fg = M.base_30.green },
    Identifier = { fg = M.base_30.white },
    Function = { fg = M.base_30.blue },
    Statement = { fg = M.base_30.purple },
    Type = { fg = M.base_30.yellow },
    Special = { fg = M.base_30.orange },
    Error = { fg = M.base_30.red, bold = true },
    Todo = { fg = M.base_30.sun, bold = true, italic = true },
}

M.type = "dark"

M = require("base46").override_theme(M, "nvim")

return M
