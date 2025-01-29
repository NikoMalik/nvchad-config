local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofmt", "goimports" },
        css = { "prettier" },
        html = { "prettier" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        markdown = { "marksman" },
        zig = { "zig fmt" },
    },

    formatters = {
        -- C
        ["clang-format"] = {
            prepend_args = {
                "-style={IndentWidth: 4, TabWidth: 4,  PackConstructorInitializers: Never, SortIncludes: false,ColumnLimit: 0}",
            },
        },
        -- Golang
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

require("conform").setup(options)
