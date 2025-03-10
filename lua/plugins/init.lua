return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    {

        "nvchad/base46",
        build = function()
            require("base46").load_all_highlights()
        end,
    },

    { "NvChad/nvim-colorizer.lua", enabled = true },

    -- { "blazkowolf/gruber-darker.nvim" },

    {
        "ThePrimeagen/harpoon",
        event = "VeryLazy",
        config = function()
            require("harpoon").setup()
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        enable = true,
        config = function()
            dofile(vim.g.base46_cache .. "syntax")
            require "configs.treesitter"
            require("nvim-treesitter.configs").setup {
                highlight = {
                    enable = true,
                    disable = { "indent" },
                    use_languagetree = true, -- Fixed typo here
                    additional_vim_regex_highlighting = false,
                },
                indent = {
                    enable = false,
                },
            }
        end,
    },
    -- {
    --     "karb94/neoscroll.nvim",
    --     config = function()
    --         require("neoscroll").setup({
    --             mappings = { -- Keys to be mapped to their corresponding default scrolling animation
    --                 "<C-u>",
    --                 "<C-d>",
    --                 "<C-y>",
    --                 "<C-e>",
    --                 "zt",
    --                 "zz",
    --                 "zb",
    --             },
    --             hide_cursor = true, -- Hide cursor while scrolling
    --             stop_eof = true, -- Stop at <EOF> when scrolling downwards
    --             respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    --             cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    --             easing = "linear", -- Default easing function
    --             pre_hook = nil, -- Function to run before the scrolling animation starts
    --             post_hook = nil, -- Function to run after the scrolling animation ends
    --             performance_mode = true, -- Disable "Performance Mode" on all buffers.
    --             ignored_events = { -- Events ignored while scrolling
    --                 "WinScrolled",
    --                 "CursorMoved",
    --             },
    --         })
    --     end,
    -- },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        opts = {
            filters = {
                dotfiles = false,
            },
            disable_netrw = true,
            hijack_netrw = true,
            hijack_cursor = true,
            hijack_unnamed_buffer_when_opening = false,
            sync_root_with_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = false,
            },
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            },

            renderer = {
                highlight_git = false,
                indent_markers = {
                    enable = false,
                },
                highlight_opened_files = "name", -- Highlights the opened file in NvimTree
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                    glyphs = {
                        folder = {
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                        },
                    },
                },
            },
            actions = {
                open_file = {
                    resize_window = true,
                },
            },
            view = {
                adaptive_size = true,
                preserve_window_proportions = true,
                side = "left",

                float = {
                    enable = true,
                    open_win_config = function()
                        local screen_w = vim.opt.columns:get()
                        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                        local window_w = screen_w * 0.5
                        local window_h = screen_h * 0.8
                        local window_w_int = math.floor(window_w)
                        local window_h_int = math.floor(window_h)
                        local center_x = (screen_w - window_w) / 2
                        local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
                        return {
                            border = "rounded",
                            relative = "editor",
                            row = center_y,
                            col = center_x,
                            width = window_w_int,
                            height = window_h_int,
                        }
                    end,
                },
                width = function()
                    return math.floor(vim.opt.columns:get() * 0.5)
                end,
            },
        },
        config = function(_, opts)
            dofile(vim.g.base46_cache .. "nvimtree")
            require("nvim-tree").setup(opts)
            -- vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#ebdab4", bold = true })
            -- vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#C0C0C0", bold = true })
            -- vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#504945" })
        end,
    },
    {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
        lazy = false,
    },

    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevios",
        },
    },
    {
        "stevearc/dressing.nvim",
        lazy = false,
        opts = {},
    },
    {
        "NvChad/nvterm",
        -- config = function(_, opts)
        --     require "base46.term"
        --     require("nvterm").setup(opts)
        -- end,
        enabled = false,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
                "eslint-lsp",
                "gopls",
                "clangd",
                "typescript-language-server",
            },
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",

        enabled = true,

        dofile(vim.g.base46_cache .. "blankline"),

        config = function()
            require("ibl").setup {
                indent = {
                    char = "▏",
                },
                scope = {

                    enabled = false,
                },
            }
        end,
    },
    {
        "Exafunction/codeium.vim",
        lazy = false,
        enabled = false,
    },
    {
        "lewis6991/gitsigns.nvim",
        ft = { "gitcommit", "diff" },
        init = function()
            -- load gitsigns only when a git file is opened
            vim.api.nvim_create_autocmd({ "BufRead" }, {
                group = vim.api.nvim_create_augroup("GitSignsLazyLoad", { clear = true }),
                callback = function()
                    vim.fn.system("git -C " .. '"' .. vim.fn.expand "%:p:h" .. '"' .. " rev-parse")
                    if vim.v.shell_error == 0 then
                        vim.api.nvim_del_augroup_by_name "GitSignsLazyLoad"
                        vim.schedule(function()
                            require("lazy").load { plugins = { "gitsigns.nvim" } }
                        end)
                    end
                end,
            })
        end,
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "│" },
                delete = { text = "󰍵" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
            current_line_blame = true,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eof",
                delay = 500,
                ignore_whitespace = false,
                virt_text_priority = 100,
                use_focus = true,
            },
            current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
            status_formatter = nil, -- Use default

            sign_priority = 6,
            preview_config = {
                border = "single",
                style = "minimal",
                relative = "cursor",
                row = 0,
                col = 1,
            },
        },
        config = function(_, opts)
            dofile(vim.g.base46_cache .. "git")
            require("gitsigns").setup(opts)
        end,
    },
    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require "configs.mason-conform"
        end,
    },
    {
        "folke/trouble.nvim",
        cmd = "Trouble",

        keys = {
            {
                "<leader>di",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
        },
        config = function()
            -- dofile(vim.g.base46_cache .. "trouble")
            require("trouble").setup {
                mode = "document_diagnostics",
            }
        end,
    },
}
