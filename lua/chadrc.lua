-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

-- M.create_fullsize = function (buf)
--     local tbline_height = #vim.o.tabline = 0 and -1 or 0
--     vim.api.nvim_open_win(buf, true, {
--         row = 1 + tbline_height,
--         col = 0,
--         width = vim.o.columns,
--         height = vim.o.lines - (3 + tbline_height),
--         relative = "editor",
--     })
--
-- enD

M.ui = {
    custom_themeDir = { "themes" },
    -- hl_add = {
    --     NvimTreeFolderIcon = { fg = "#504945" },
    --     NvimTreeFolderName = { fg = "#ebdab4", bold = true },
    --     NvimTreeOpenedFolderName = { fg = "#C0C0C0", bold = true },
    -- },
    hl_override = {
        DiffChange = {
            bg = "#464414",
            fg = "none",
        },
        DiffAdd = {
            bg = "#103507",
            fg = "none",
        },
        DiffRemoved = {
            bg = "#461414",
            fg = "none",
        },
    },
    tabufline = {
        enabled = true,
        lazyload = true,
    },

    statusline = {
        theme = "vscode_colored",
        separator_style = "round",
        overriden_modules = function()
            local st_modules = require "nvchad_ui.statusline_vscode_colored"
            return {
                fileInfo = function()
                    local fn = vim.fn
                    local sep = "%#St_file_sep#"
                    local str = st_modules.fileInfo()
                    local parts = {}
                    for match in (str .. sep):gmatch("(.-)" .. sep) do
                        table.insert(parts, match)
                    end

                    local new_sep_r = string.gsub(parts[2], " %%", "")
                    local icon = "  "
                    local filename = (fn.expand "%" == "" and "Empty ") or fn.expand "%:t"
                    local foldername = (fn.expand "%:p:h" == "" and "Empty") or fn.expand "%:p:h:t"

                    local modified_indicator = ""
                    if vim.bo.modified then
                        modified_indicator = " "
                    end

                    if filename ~= "Empty " then
                        local devicons_present, devicons = pcall(require, "nvim-web-devicons")

                        if devicons_present then
                            local ft_icon = devicons.get_icon(filename)
                            icon = (ft_icon ~= nil and " " .. ft_icon) or ""
                        end

                        filename = " " .. foldername .. " -> " .. filename .. modified_indicator .. " "
                    end

                    return "%#St_file_info#" .. icon .. filename .. "%#St_file_sep#" .. new_sep_r
                end,
            }
        end,
    },
}

M.base46 = {
    theme = "doge",
    transparency = true,
}

return M
