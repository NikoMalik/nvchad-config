require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- local p = require("nvchad.tabufline").prev()
-- local n = require("nvchad.tabufline").next()
-- local tabufline = require "nvchad.tabufline"
--
-- for i = 1, 9 do
--     map("n", string.format("<A-%s>", i), function()
--         if vim.t.bufs and vim.t.bufs[i] then
--             vim.api.nvim_set_current_buf(vim.t.bufs[i])
--         else
--             print "Buffer not found!"
--         end
--     end, { desc = string.format("Switch to buffer %s", i) })
-- end

map("n", "<C-a>", "gg<S-v>G")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "gd", function()
    vim.lsp.buf.definition()
end, { desc = "Go to definition" })

map("n", "<leader>fs", function()
    require("telescope.builtin").live_grep()
end, { desc = "Document symbols" })
--
-- map("n", "<leader>gib", function()
--     vim.lsp.buf.hover()
-- end)

map("n", "<leader>rn", function()
    vim.lsp.buf.rename()
end)

map("n", "<leader>rr", function()
    vim.lsp.buf.references()
end, { desc = "List references" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<C-n>", "<cmd>NvimTreeToggle")
map({ "n", "i" }, "<C-s>", "<cmd>w<CR>", { desc = "General save file" })

--vsplit

map("n", "|", ":split<CR>", { desc = "Horizontal Split" })

-- harpooon
--
-- HOW TO DELETE??
-- SPACE +MT = DD TO FILE
map("n", "<leader>m", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, desc = "harpoon add file" })
map("n", "<leader>mt", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "harpoon toggle quick menu" })
map("n", "<leader>sm", ":Telescope harpoon marks<CR>", { desc = "harpoon marks", noremap = true })
map("n", "<A-1>", ":lua require('harpoon.ui').nav_file(1)<CR>", { desc = "harpoon to the left", noremap = true })
map("n", "<A-2>", ":lua require('harpoon.ui').nav_file(2)<CR>", { desc = "harpoon to the right", noremap = true })
map("n", "<A-3>", ":lua require('harpoon.ui').nav_file(3)<CR>", { desc = "harpoon to the left", noremap = true })
map("n", "<A-4>", ":lua require('harpoon.ui').nav_file(4)<CR>", { desc = "harpoon to the right", noremap = true })

--
-- map("n", "<leader>a", function()
--     harpoon.mark.add_file()
-- end, { desc = "harpoon add file" })
--
-- map("n", "<leader>ah", function()
--     harpoonui.toggle_quick_menu()
-- end, { desc = "harpoon toggle quick menu" })
--
map("n", "<S-h>", ":lua require('harpoon.ui').nav_prev()<CR>", { desc = "harpoon to the left", noremap = true })
map("n", "<S-l>", ":lua require('harpoon.ui').nav_next()<CR>", { desc = "harpoon to the right", noremap = true })

--
-- map("i", "<C-g>", function()
--     return vim.fn["codeium#Accept"]()
-- end, { expr = true })

-- Tmux
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical Split" })
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" })

-- Git
-- map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })
-- map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
-- map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
-- map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git File History" })

-- Errors
map("n", "<leader-1>", function()
    vim.diagnostic.open_float(nil, { scope = "line", focusable = false })
end, { desc = "Show line diagnostics" })
map("n", "]g", vim.diagnostic.goto_next)
map("n", "[g", vim.diagnostic.goto_prev)

--moves
map("n", "<A-Down>", ":m .+1<CR>", { desc = "Move line down" })
map("n", "<A-j>", ":m .+1<CR>", { desc = "Move line down" })
map("n", "<A-Up>", ":m .-2<CR>", { desc = "Move line up" })
map("n", "<A-k>", ":m .-2<CR>", { desc = "Move line up" })
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- For NVIM tree
map("n", "<C-n>", ":NvimTreeToggle<CR>")
map("n", "<C-e>", ":NvimTreeFocus<CR>")
map("n", "<r>", ":NvimTreeRename<CR>")
map("n", "<A-f>", "<cmd>lua vim.lsp.buf.definition()<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
--

--Term
map("t", "<C-x>", "<C-\\><C-N>", { desc = "Term escape terminal mode" })
