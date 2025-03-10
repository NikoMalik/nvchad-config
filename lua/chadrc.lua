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

    hl_override = {
        DiffChange = { bg = "#464414", fg = "none" },
        DiffAdd = { bg = "#103507", fg = "none" },
        DiffRemoved = { bg = "#461414", fg = "none" },
    },

    tabufline = {
        enabled = false,
        lazyload = true,
        order = { "buffers", "treeOffset" },
    },

    statusline = {
        theme = "vscode_colored",
        order = { "folder", "commit", "%=", "git", "diagnostics" },
        modules = {
            folder = function()
                local path = vim.fn.fnamemodify(vim.fn.getcwd(), ":~")

                local modified = vim.bo.modified and "[+]" or "[-]"

                return "%#St_file_info#" .. path .. " " .. modified .. " "
            end,
            commit = function()
                local is_git_repo = vim.fn.system("git rev-parse --is-inside-work-tree 2>/dev/null"):gsub("%s+", "")
                if is_git_repo ~= "true" then
                    return ""
                end

                local handle = io.popen "git log -1 --pretty=%s 2>/dev/null"
                local commit_msg = handle and handle:read "*a" or ""
                if handle then
                    handle:close()
                end

                commit_msg = commit_msg:gsub("%s+", ""):sub(1, 50)

                return commit_msg ~= "" and "  " .. commit_msg .. " " or ""
            end,
        },
    },
}

M.nvdash = {
    load_on_startup = true,
    header = {
        --
        -- "                 ▄              ▄    ",
        -- "                ▌▒█           ▄▀▒▌   ",
        -- "                ▌▒▒█        ▄▀▒▒▒▐   ",
        -- "               ▐▄█▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐   ",
        -- "             ▄▄▀▒▒▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐   ",
        -- "           ▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌   ",
        -- "          ▐▒▒▒▄▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄▒▌  ",
        -- "          ▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐  ",
        -- "         ▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄▌ ",
        -- "         ▌░▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▌ ",
        -- "        ▌▒▒▒▄██▄▒▒▒▒▒▒▒▒░░░░░░░░▒▒▒▐ ",
        -- "        ▐▒▒▐▄█▄█▌▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▒▒▌",
        -- "        ▐▒▒▐▀▐▀▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▐ ",
        -- "         ▌▒▒▀▄▄▄▄▄▄▀▒▒▒▒▒▒▒░▒░▒░▒▒▒▌ ",
        -- "         ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▒▄▒▒▐  ",
        -- "          ▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▄▒▒▒▒▌  ",
        -- "            ▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀   ",
        -- "              ▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀     ",
        -- "                 ▀▀▀▀▀▀▀▀▀▀▀▀        ",

        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣤⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠻⠿⢿⣿⣿⣿⣿⣿⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⣿⣿⣿⣿⣿⣿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣙⢿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠻⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡟⠹⠿⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⠋⡬⢿⣿⣷⣤⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡇⢸⡇⢸⣿⣿⣿⠟⠁⢀⣬⢽⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣧⣈⣛⣿⣿⣿⡇⠀⠀⣾⠁⢀⢻⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣧⣄⣀⠙⠷⢋⣼⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠛⠛⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
}

M.base46 = {
    theme = "gruber",
    -- theme = vim.cmd.colorscheme "gruber-darker",

    -- vim.cmd.colorscheme "default",
    -- transparency = true,
}

return M
