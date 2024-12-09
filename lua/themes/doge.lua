---@type Base46Table

local M = {}

-- UI
M.base_30 = {
    white = "#ebdab4",
    black = "#0f1115", -- background
    darker_black = "#0c0d10", -- 6% darker than black
    black2 = "#181a1e", -- can adjust based on design
    one_bg = "#2e2e2e", -- 10% lighter than black
    one_bg2 = "#3e3e37", -- 6% lighter than one_bg
    one_bg3 = "#504a43", -- 6% lighter than one_bg2
    grey = "#7a7168", -- 40% lighter than black
    grey_fg = "#a89984", -- 10% lighter than grey
    grey_fg2 = "#a89e94", -- 5% lighter than grey
    light_grey = "#cbbca3",
    red = "#fb4934",
    baby_pink = "#d3869b",
    pink = "#b16286",
    line = "#202226", -- 15% lighter than black
    green = "#32c885",
    vibrant_green = "#b8bb26",
    blue = "#83a598",
    nord_blue = "#458589",
    seablue = "#8ec07c",
    yellow = "#d79921", -- 8% lighter than yellow
    sun = "#fabd2f",
    purple = "#b16286",
    dark_purple = "#d3869b",
    teal = "#689d6a",
    orange = "#d65d0e",
    cyan = "#689d6a",
    statusline_bg = "#2e2e2e",
    lightbg = "#403b36",
    pmenu_bg = "#37575c",
    folder_bg = "#d4c4a2",
}

M.base_16 = {
    base00 = "#0f1115",
    base01 = "#ebdab4",
    base02 = "#403b36",
    base03 = "#504a43",
    base04 = "#bdae93",
    base05 = "#a89e94",
    base06 = "#cbbca3",
    base07 = "#C0C0C0",
    base08 = "#cc241d",
    base09 = "#d79921",
    base0A = "#fabd2f",
    base0B = "#b8bb26",
    base0C = "#83a598",
    base0D = "#458588",
    base0E = "#b16286",
    base0F = "#cbbca3",
}

-- M.add = {
--     NvimTreeFolderName = { fg = M.base_30.white, bold = true },
--     NvimTreeOpenedFolderName = { fg = M.base_30.base07 },
-- }
--
M.polish_hl = {
    Include = { fg = M.base_30.red },
    TSHighlightCapturesUnderCursor = { fg = M.base_30.green },

    treesitter = {
        ["@character.special.make"] = { fg = M.base_30.red },
        ["@comment.note"] = { fg = M.base_30.nord_blue, italic = true },
        ["@comment.warning"] = { fg = M.base_30.sun, italic = true },
        ["@reference_declarator"] = { fg = M.base_30.green },
        ["@pointer_declarator"] = { fg = M.base_30.green },
        ["@unary_expression"] = { fg = M.base_30.green },
        -- ["*"] = { fg = M.base_30.green },
        ["@keyword.import.c"] = { fg = M.base_30.green },
        ["@function"] = { fg = M.base_30.white },
        ["@function.make"] = { fg = "#4d4f50" },
        ["@function.builtin"] = { fg = "#4d4f50" },
        ["@comment"] = { fg = M.base_30.cyan, italic = true },
        ["@module"] = { fg = M.base_30.white },
        ["@variable"] = { fg = M.base_30.white },
        ["@keyword"] = { fg = M.base_30.white },
        ["@keyword.directive.define.c"] = { fg = M.base_30.green },
        ["@keyword.import.go"] = { fg = M.base_30.green },
        ["@keyword.type.struct"] = { fg = M.base_30.nord_blue },
        ["@keyword.type"] = { fg = M.base_30.white },
        ["@keyword.repeat"] = { fg = "#e8e8e8" },
        ["@keyword.operator.c"] = { fg = "#73b6f1" },
        ["@type"] = { fg = M.base_30.white },
        ["@type.builtin.c"] = { fg = "#e8e8e8" },
        ["@punctuation.separator"] = { fg = M.base_30.green },
        ["@property"] = { fg = M.base_30.white },

        ["@punctuation.bracket"] = { fg = M.base_30.white },
        ["@variable.member"] = { fg = M.base_30.white },
        ["@variable.parameter"] = { fg = M.base_30.white },
        ["@attribute"] = { fg = M.base_30.white },
        ["@keyword.function"] = { fg = M.base_30.white },
        ["@function.call"] = { fg = "#b3af9e" },
        ["@keyword.return"] = { fg = "#4d4f50" },
        ["@keyword.conditional"] = { fg = "#e8e8e8" },
        ["@function.method.call"] = { fg = M.base_30.white },
        ["@function.method"] = { fg = M.base_30.white },
        ["@function.builtin.lua"] = { fg = M.base_30.red },
        ["@operator"] = { fg = "#73b6f1" },
        ["@builtin"] = { fg = M.base_30.sun },
        ["@boolean"] = { fg = M.base_30.red },
        ["@constant"] = { fg = M.base_30.white },
        ["@constant.builtin"] = { fg = M.base_30.sun },
        ["@type.definition"] = { fg = M.base_30.white },
        ["@number"] = { fg = M.base_30.baby_pink },
        ["@operand"] = { fg = M.base_30.green },
        ["@string"] = { fg = "#c2b9a7" },

        -- [""]
    },
}

M.type = "dark"

M = require("base46").override_theme(M, "gruvchad")

return M
