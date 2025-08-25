require("ibl").setup {
    indent = {
        char = "│",
        tab_char = "│",
    },
    whitespace = {
        highlight = { "Whitespace" },
        remove_blankline_trail = false
    },
    scope = { enabled = true },
    exclude = {
        filetypes = { "help", "NvimTree", "neo-tree" },
        buftypes = { "terminal", "nofile" },
    },
}
