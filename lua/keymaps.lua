local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, silent = true, desc = "[Esc] Clear highlights" })
-- map("n", "<Leader>e", "<cmd>Neotree focus<CR>", { noremap = true, silent = true, desc = "Toggle Neotree" })

-- LSP
map("n", "<leader>rn", vim.lsp.buf.rename,      { desc = "LSP: [R]e[n]ame"})
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: [C]ode [A]ction"})
map("n", "<leader>f" , vim.lsp.buf.format,      { desc = "LSP: [F]ormat current buffer"})

--  Telescope
local builtin = require("telescope.builtin")
map("n", "<leader><leader>", builtin.buffers,                   { desc = "[ ] Find existing buffers"})
map("n", "<leader>sk",       builtin.keymaps,                   { desc = "[S]earch [K]eymaps"})
map("n", "<leader>sf",       builtin.find_files,                { desc = "[S]earch [F]iles"})
map("n", "<leader>sw",       builtin.grep_string,               { desc = "[S]earch current [W]ord"})
map("n", "<leader>sg",       builtin.live_grep,                 { desc = "[S]earch by [G]rep"})
map("n", "<leader>sd",       builtin.diagnostics,               { desc = "[S]earch [D]iagnostics"})
map("n", "<leader>/",        builtin.current_buffer_fuzzy_find, { desc = "[/] Fuzzily search in current buffer"})

-- Telescope > LSP
map("n", "gd", builtin.lsp_definitions,     {desc = "LSP: [G]oto [D]efinition"})
map("n", "gr", builtin.lsp_references,      {desc = "LSP: [G]oto [R]eferences"})
map("n", "gI", builtin.lsp_implementations, {desc = "LSP: [G]oto [I]mplementation"})
