require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local util = require "lspconfig/util"
--
-- EXAMPLE
local servers = {
    "html",
    "cssls",
    "gopls",
    "clangd",
    "marksman",
    "zls",
}

-- Function to disable clangd on .proto files
local function disable_clangd_for_proto(client, bufnr)
    local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")
    if filetype == "proto" then
        client.stop()
    end
end

-- Setup other LSP servers
for _, lsp in ipairs(servers) do
    if lsp ~= "gopls" and lsp ~= "clangd" then
        lspconfig[lsp].setup {
            on_attach = function(client, bufnr)
                nvlsp.on_attach(client, bufnr)

                -- Disable clangd for proto files
                -- if lsp == "clangd" then
                --     disable_clangd_for_proto(client, bufnr)
                -- end
            end,
            on_init = nvlsp.on_init,
            capabilities = nvlsp.capabilities,
        }
    end
end

lspconfig.zls.setup {
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        nvlsp.on_attach(client, bufnr)
    end,
    capabilities = nvlsp.capabilities,
    on_init = nvlsp.on_init,
    cmd = { "zls" },
    filetypes = { "zig", "zon", "zir" },
    -- root_dir = "../../../zls.json",
    root_dir = util.root_pattern("zls.json", "build.zig", ".git"),
}

-- Setup gopls
lspconfig.gopls.setup {
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        nvlsp.on_attach(client, bufnr)

        -- Organize imports on save
    end,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    settings = {
        maxPreload = 100000,
        preloadFileSize = 10000,

        gopls = {
            gofumpt = true,
            completeUnimported = true,
            codelenses = {
                gc_details = true, -- Display the garbage collector choices
                -- generate = true, -- Show the "go generate" lens for generating code
                -- regenerate_cgo = true, -- Show the "regenerate cgo" lens
                -- tidy = true, -- Show the "go mod tidy" lens
                -- upgrade_dependency = true, -- Upgrade dependencies
                -- test = true, -- Run tests directly in the editor
            },
            staticcheck = true,
            diagnosticsDelay = "100ms",
            hoverKind = "FullDocumentation", -- Can be "SingleLine", "Structured" or "FullDocumentation"

            usePlaceholders = false,
            analyses = {
                unusedparam = true,
                -- fieldalignment = true,
                sizeoffset = true,
                shadow = true,
            },
        },
    },
}

lspconfig.clangd.setup {
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        nvlsp.on_attach(client, bufnr)
        disable_clangd_for_proto(client, bufnr)
    end,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    settings = {
        maxPreload = 100000,
        preloadFileSize = 10000,
        diagnosticsDelay = "100ms",
        clangd = {
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
                "--function-arg-placeholders",
            },
            init_options = {
                usePlaceholders = false,
                completeUnimported = true,
                fallbackFlags = { "-std=c11" },
            },
        },
    },
}
