require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "^.git/",
            "^.cache/",
        },
        vimgrep_arguments = {
            -- ripggrepコマンドのオプション
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "-uu",
        },
    },
    picker = {},
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
        file_browser = {
            theme = "gruvbox",
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                     -- your custom insert mode mappings
                },
                ["n"] = {
                     -- your custom insert mode mappings
                },
            },
        },
    }
}

-- Optional dependencies
-- sharkdp/fd (finder)
-- nvim-treesitter/nvim-treesitter (finder/preview)
-- neovim LSP (picker)
-- devicons (icons)