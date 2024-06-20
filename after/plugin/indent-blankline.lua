local highlight = {
    "IblIndent",
}
require("ibl").setup {
    indent = { highlight = highlight },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = true,
    },
    scope = { enabled = true },
    exclude = { filetypes = {
        'dashboard',
    }}
}
