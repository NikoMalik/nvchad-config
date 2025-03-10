local gruber_darker_fg = "#e4e4ef"
local gruber_darker_fg1 = "#f4f4ff"
local gruber_darker_fg2 = "#f5f5f5"
local gruber_darker_white = "#ffffff"
local gruber_darker_black = "#000000"
local gruber_darker_bg_1 = "#101010"
local gruber_darker_bg = "#181818"
local gruber_darker_bg1 = "#282828"
local gruber_darker_bg2 = "#453d41"
local gruber_darker_bg3 = "#484848"
local gruber_darker_bg4 = "#52494e"
local gruber_darker_red_1 = "#c73c3f"
local gruber_darker_red = "#f43841"
local gruber_darker_red1 = "#ff4f58"
local gruber_darker_green = "#73c936"
local gruber_darker_yellow = "#ffdd33"
local gruber_darker_brown = "#cc8c3c"
local gruber_darker_quartz = "#95a99f"
local gruber_darker_niagara_2 = "#303540"

local gruber_darker_niagara_1 = "#565f73"
local gruber_darker_niagara = "#96a6c8"
local gruber_darker_wisteria = "#9e95c7"
-- ---@type Base46Table
local M = {}
-- UI
M.base_30 = {
    white = gruber_darker_fg,
    black = gruber_darker_bg, -- usually your theme bg
    darker_black = gruber_darker_bg_1, -- 6% darker than black
    black2 = gruber_darker_bg1, -- 6% lighter than black
    one_bg = gruber_darker_bg2, -- 10% lighter than black
    one_bg2 = gruber_darker_bg3, -- 6% lighter than one_bg2

    one_bg3 = gruber_darker_bg4, -- 6% lighter than one_bg3
    grey = "#747474", -- 40% lighter than black (the % here depends so choose the perfect grey!)
    grey_fg = "#a3a3a3", -- 10% lighter than grey
    grey_fg2 = "#bababa", -- 5% lighter than grey
    light_grey = "#d1d1d1",
    red = gruber_darker_red,
    baby_pink = gruber_darker_red1,
    pink = gruber_darker_wisteria,
    line = gruber_darker_bg1, -- 15% lighter than black
    green = gruber_darker_green,
    vibrant_green = gruber_darker_green,
    nord_blue = gruber_darker_niagara,
    blue = gruber_darker_niagara_1,
    seablue = gruber_darker_niagara_2,
    yellow = gruber_darker_yellow, -- 8% lighter than yellow
    sun = gruber_darker_brown,
    purple = gruber_darker_wisteria,
    dark_purple = gruber_darker_wisteria,
    teal = gruber_darker_quartz,
    orange = gruber_darker_brown,
    cyan = gruber_darker_quartz,

    statusline_bg = gruber_darker_bg1,
    lightbg = gruber_darker_bg3,
    pmenu_bg = gruber_darker_bg2,
    folder_bg = gruber_darker_bg2,
}

M.base_16 = {
    base00 = gruber_darker_bg, -- Default Background
    base01 = gruber_darker_bg1, -- Lighter Background (Used for status bars, line number and folding marks)

    base02 = gruber_darker_bg1, -- Selection Background
    base03 = gruber_darker_brown, -- Comments, Invisibles, Line Highlighting
    base04 = gruber_darker_white, -- Dark Foreground (Used for status bars)
    base05 = gruber_darker_fg, -- Default Foreground, Caret, Delimiters, Operators
    base06 = gruber_darker_black, -- Light Foreground (Not often used)
    base07 = gruber_darker_white, -- Light Background (Not often used)
    base08 = gruber_darker_fg2, -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = gruber_darker_quartz, -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = gruber_darker_quartz, -- Classes, Markup Bold, Search Text Background

    base0B = gruber_darker_green, -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = gruber_darker_fg1, -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = gruber_darker_niagara, -- Functions, Methods, Attribute IDs, Headings
    base0E = gruber_darker_yellow, -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = gruber_darker_fg2, -- Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>`
}

-- -- OPTIONAL
-- -- overriding or adding highlights for this specific theme only
-- -- defaults/treesitter is the filename i.e integration there,
--

-- M.polish_hl = {
--   defaults = {
--     Comment = {
--       bg = "#ffffff", -- or M.base_30.cyan
--       italic = true,
--     },
--   },
--
--   treesitter = {
--     ["@variable"] = { fg = "#000000" },
--   },
-- }
--
-- set the theme type whether is dark or light
M.type = "dark" -- "or light"
--
-- -- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "gruber")

return M
