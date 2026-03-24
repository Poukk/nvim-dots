local function gh(repo)
    return "https://github.com/" .. repo
end

vim.pack.add({
    gh("nvim-lua/plenary.nvim"),
    gh("nvim-treesitter/nvim-treesitter"),
    gh("nvim-tree/nvim-web-devicons"),
    gh("Saghen/blink.cmp"),
    gh("lukas-reineke/indent-blankline.nvim"),
    gh("nvim-lualine/lualine.nvim"),
    gh("nvim-telescope/telescope.nvim"),
    gh("nvim-telescope/telescope-fzf-native.nvim"),
    gh("vague2k/vague.nvim"),
    gh("mason-org/mason.nvim"),
    gh("neovim/nvim-lspconfig")
})

require("mason").setup({})
require("ibl").setup({})


-- TODO: Make separators between sections rectangular
require("lualine").setup({
    sections = {
        lualine_x = { 'filetype' }
    }
})

require('telescope').setup {
    defaults = {
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        prompt_prefix = "| ",
        selection_caret = "⣿ "
    }
}

require("blink.cmp").setup({
    appearance = {
        nerd_font_variant = "mono",
    },
    completion = {
        documentation = {
            auto_show = false,
        },
        menu = { auto_show = true },
    },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = 'prefer_rust_with_warning' }
})
