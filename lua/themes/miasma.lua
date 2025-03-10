local M = {}

M.base_16 = {
    base00 = "#101010",
    base01 = "#181818",
    base02 = "#1c1c1c",
    base03 = "#43492a",
    base04 = "#453d41",
    base05 = "#d7c483",
    base06 = "#e4e4ef",
    base07 = "#ffffff",
    base08 = "#b36d43",
    base09 = "#bb7744",
    base0A = "#c9a554",
    base0B = "#5f875f",
    base0C = "#78824b",
    base0D = "#685742",
    base0E = "#9e95c7",
    base0F = "#666666",
}

M.base_30 = {
    white = "#ffffff",
    darker_black = "#080808",
    black = M.base_16.base00,
    black2 = "#141414",
    one_bg = M.base_16.base01,
    one_bg2 = "#222222",
    one_bg3 = "#282828",
    grey = "#52494e",
    grey_fg = "#565f73",
    grey_fg2 = "#303540",
    light_grey = "#6a6a6a",
    red = "#b36d43",
    baby_pink = "#ff87af",
    pink = "#ffafd7",
    line = "#3a3d41",
    green = "#5f875f",
    vibrant_green = "#8aff8a",
    nord_blue = "#96a6c8",
    blue = "#5fafff",
    yellow = "#c9a554",
    sun = "#ffe570",
    purple = "#9e95c7",
    dark_purple = "#887aa9",
    teal = "#95a99f",
    orange = "#cc8c3c",
    cyan = "#70c0b1",
    statusline_bg = "#1c1c1c",
    lightbg = "#222222",
    pmenu_bg = "#78824b",
    folder_bg = "#5f875f",
}

M.polish_hl = {

    ["@comment"] = { fg = "#666666", italic = true },
    ["@string"] = { fg = "#685742" },
    ["@function"] = { fg = "#78824b" },
    ["@keyword"] = { fg = "#5f875f", bold = true },
    ["@type"] = { fg = "#78824b", bold = true },
    ["@variable"] = { fg = "#d7c483" },

    CursorLine = { bg = "#1c1c1c" },
    Visual = { bg = "#3a3d41" },
    MatchParen = { bg = "#3a3a3a", underline = true, bold = true },

    GitSignsAdd = { fg = "#5f875f" },
    GitSignsChange = { fg = "#685742" },
    GitSignsDelete = { fg = "#b36d43" },

    LazyButtonActive = { fg = "#222222", bg = "#78824b" },
    TelescopeBorder = { fg = "#685742", bg = "#1c1c1c" },
    PmenuSel = { fg = "#222222", bg = "#78824b" },

    ["@text.todo"] = { fg = "#d7c483", bold = true, underline = true },
    ["@text.uri"] = { fg = "#78824b", underline = true },
}

M.type = "dark"

return require("base46").override_theme(M, "miasma")
