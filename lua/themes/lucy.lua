---@type Base46Table

local oh_lucy_evening = {
    fg = "#DED7D0",
    bg = "#1E1D23",
    none = "#1E1D23",
    --17161B
    dark = "#1A191E",
    comment = "#686069",
    popup_back = "#515761",
    cursor_fg = "#DED7D0",
    context = "#515761",
    cursor_bg = "#AEAFAD",
    accent = "#BBBBBB",
    diff_add = "#8CD881",
    diff_change = "#6CAEC0",
    cl_bg = "#524A51",
    diff_text = "#568BB4",
    line_fg = "#524A51",
    line_bg = "#1E1D23",
    gutter_bg = "#1E1D23",
    non_text = "#7F737D",
    selection_bg = "#817081",
    selection_fg = "#615262",
    vsplit_fg = "#cccccc",
    vsplit_bg = "#2E2930",
    visual_select_bg = "#29292E",
    red_key_w = "#FF7DA3",
    red_err = "#D95555",
    green_func = "#7EC49D",
    green = "#7EC49D",
    blue_type = "#8BB8D0",
    black1 = "#29292E",
    black = "#1A191E",
    white1 = "#DED7D0",
    white = "#DED7D0",
    gray_punc = "#938884",
    gray2 = "#7F737D",
    gray1 = "#413E41",
    gray = "#322F32",
    orange = "#E0828D",
    boolean = "#B898DD",
    orange_wr = "#E39A65",
    pink = "#BDA9D4",
    yellow = "#EFD472",
}

-- this line for types, by hovering and autocompletion (lsp required)
-- -- will help you understanding properties, fields, and what highlightings the color used for
-- ---@type Base46Table
local M = {}

-- UI

M.base_30 = {
    white = oh_lucy_evening.white,
    black = oh_lucy_evening.black, -- usually your theme bg

    -- Background nvtree
    darker_black = oh_lucy_evening.black, -- 6% darker than black

    -- bg tabs, and folder selected
    black2 = oh_lucy_evening.visual_select_bg, -- 6% lighter than black
    one_bg = oh_lucy_evening.bg, -- 10% lighter than black
    -- Bg block cursor
    one_bg2 = oh_lucy_evening.visual_select_bg, -- 6% lighter than one_bg2
    -- Bg button toggle theme
    one_bg3 = oh_lucy_evening.bg, -- 6% lighter than one_bg3
    -- Line numbers
    grey = oh_lucy_evening.cl_bg, -- 40% lighter than black (the % here depends so choose the perfect grey!)
    -- comments
    grey_fg = oh_lucy_evening.comment, -- 10% lighter than grey
    grey_fg2 = oh_lucy_evening.yellow, -- 5% lighter than grey
    -- fg NvTree in folders no actives
    light_grey = oh_lucy_evening.white1,
    -- Standar colors
    cyan = oh_lucy_evening.diff_change,
    orange = oh_lucy_evening.orange,
    teal = oh_lucy_evening.blue_type, -- selected
    purple = oh_lucy_evening.boolean,
    dark_purple = oh_lucy_evening.boolean,
    blue = oh_lucy_evening.diff_text,
    nord_blue = oh_lucy_evening.blue_type, -- Bg nomal mode and LSP section
    yellow = oh_lucy_evening.orange_wr, -- 8% lighter than yellow
    sun = oh_lucy_evening.yellow,
    green = oh_lucy_evening.blue_type, -- document percentage
    vibrant_green = oh_lucy_evening.green_func,
    line = oh_lucy_evening.black, -- line separator  -- 15% lighter than black
    red = oh_lucy_evening.red_key_w, -- error
    pink = oh_lucy_evening.pink,
    baby_pink = oh_lucy_evening.boolean,
    -- file name in status bar
    lightbg = oh_lucy_evening.bg,
    -- color selector submenu
    pmenu_bg = oh_lucy_evening.visual_select_bg,
    -- Foreground icon color
    folder_bg = oh_lucy_evening.comment,
    --Status bar
    statusline_bg = oh_lucy_evening.bg,
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info

M.base_16 = {
    base00 = oh_lucy_evening.bg, -- Default Background
    base01 = oh_lucy_evening.orange, -- Lighter Background (Used for status bars, line number and folding marks)
    base02 = oh_lucy_evening.visual_select_bg, -- Selection Background
    base03 = oh_lucy_evening.comment, -- Comments, Invisibles, Line Highlighting
    base04 = oh_lucy_evening.line_fg, -- Dark Foreground (Used for status bars)
    base05 = oh_lucy_evening.white1, -- Default Foreground, Caret, Delimiters, Operators
    base06 = oh_lucy_evening.white1, -- Light Foreground (Not often used)
    base07 = oh_lucy_evening.orange_wr, -- Light Background (Not often used)
    base08 = oh_lucy_evening.white1, -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = oh_lucy_evening.green, -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = oh_lucy_evening.green, -- Classes, Markup Bold, Search Text Background
    base0B = oh_lucy_evening.yellow, -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = oh_lucy_evening.orange_wr, -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = oh_lucy_evening.red_key_w, -- Functions, Methods, Attribute IDs, Headings
    base0E = oh_lucy_evening.diff_change, -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = oh_lucy_evening.gray2, -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
}
M.type = "dark"

M = require("base46").override_theme(M, "Oh Lucy Evening")

return M
