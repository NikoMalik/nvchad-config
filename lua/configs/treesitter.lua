local options = {
    ensure_installed = {
        "bash",
        "fish",
        "lua",
        "luadoc",
        "markdown",
        "yaml",
        "c",
        "cmake",
        "cpp",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        "make",
        "python",
        "rust",
        "toml",
        "zig",
        "json",
        "vim",
        "vimdoc",
        "sql",
        "zig",
    },

    -- indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
