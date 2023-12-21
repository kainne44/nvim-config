return {
    {
        "roobert/palette.nvim",
        lazy = false,
        priority = 1000,
        config = function()
           local m = require("palette.theme").main
           local s = require("palette.theme").state

            require("palette").setup({
                custom_highlight_group = "group_name",
                custom_highlight_groups = {
                    group_name = {
                        { "Whitespace",                    '#fa5f8b' },
                        { "Normal",                        '#00a3d2', '#21262f' },
                        { "NormalFloat",                   '#00a3d2' },
                        { "FloatBorder",                   '#00a9b9' },
                        { "NotifyBackground",              nil,       '#21262f' },
                        { "NonText",                       '#00a3d2' },
                        
                        -- End of buffer: ~'s
                        { "EndOfBuffer",                   '#898e98' },


                        -- Preprocessor & Include
                        { "PreProc",                       '#e17954' },
                        { "Include",                       '#f06c6f' },

                        -- Statements and Keywords
                        { "Statement",                     '#fa5f8b' },
                        { "Conditional",                   '#fa5f8b' },
                        { "Repeat",                        '#fa5f8b' },
                        { "Exception",                     '#fa5f8b' },
                        { "Directory",                     '#d3ab58' },
                        { "Keyword",                       '#fa5f8b' },

                        -- Operators and Delimiters
                        { "Operator",                      '#a6abb8' },
                        { "Delimiter",                     '#a6abb8' },

                        -- Comments and Documentation
                        { "Comment",                       '#6d727e', nil,      m.italic },
                        { "DocComment",                    '#6d727e', nil,      m.italic },

                        -- Identifiers
                        { "Identifier",                    '#a6abb8' },
                        { "Variable",                      '#d3ab58' },

                        { "Function",                      '#00a9b9' },
                        { "Macro",                         '#00a9b9' },

                        -- Special characters
                        { "Special",                       '#e17954' },
                        { "SpecialChar",                   '#f06c6f' },

                        -- Strings
                        { "String",                        '#d3ab58' },

                        -- Variables
                        { "Type",                          '#e17954', nil,      "NONE" },
                        { "Label",                         '#fa5f8b' },

                        -- Constants and Literals
                        { "Character",                     '#fa5f8b' },
                        { "Number",                        '#d08447' },
                        { "Boolean",                       '#f06c6f' },
                        { "Float",                         '#d08447' },
                        { "Constant",                      '#f06c6f' },

                        -- Todo's etc.
                        { "Todo",                          '#00a9b9', nil,      m.italic },
                        { "Debug",                         '#e17954', nil,      m.italic },

                        -- Status line, VertSplit, Tab pages, Titles, etc.
                        { "StatusLine",                    '#898e9a' },
                        { "StatusLineNC",                  '#d08447' },
                        { "VertSplit",                     '#898e98' },
                        { "TabLine",                       '#898e98' },
                        { "TabLineSel",                    '#d08447' },
                        { "TabLineFill",                   '#d3ab58' },
                        { "Title",                         '#00a3d2' },

                        -- Visual Mode
                        { "Visual",                        '#d3ab58', '#393e48' },
                        { "VisualNOS",                     '#e17954', '#393e48' },

                        -- Line Numbers
                        { "LineNr",                        '#00ab9a' },
                        { "CursorLineNr",                  '#00a9b9' },

                        -- Folded text, and the column where it's shown
                        { "Folded",                        '#e17954', '#21262f' },
                        { "FoldColumn",                    '#e17954', '#21262f' },

                        -- Popup menu
                        { "Pmenu",                         '#d3ab58', '#898e9a' },
                        { "PmenuSel",                      '#d3ab58', '#525762' },
                        --{ "PmenuSbar", a.accent0 },
                        { "PmenuThumb",                    nil,       '#00a9b9' },

                        -- Spell checking
                        { "SpellBad",                      '#f06c6f' },
                        { "SpellCap",                      '#e17954' },
                        { "SpellRare",                     '#d08447' },
                        { "SpellLocal",                    '#d3ab58' },

                        -- More UI elements
                        { "Cursor",                        '#fa5f8b' },
                        { "CursorColumn",                  '#fa5f8b' },
                        { "CursorLine",                    nil,       '#393e48' },
                        { "CursorLineFold",                '#fa5f8b' },
                        { "CursorLineSign",                '#fa5f8b' },
                        { "ToolbarLine",                   '#f06c6f' },
                        { "ToolbarButton",                 '#f06c6f' },
                        -- Search & Matches
                        { "MatchParen",                    '#212627', '#c4c9d6' },
                        { "Search",                        '#e2eaf5' },
                        { "IncSearch",                     '#e2eaf5', '21262f' },

                        -- Errors and Warnings
                        { "NvimInternalError",             s.error,   '21262f' },
                        { "Error",                         s.error },
                        { "WarningMsg",                    s.warning },
                        { "ErrorMsg",                      s.error },

                        -- Diagnostic
                        { "DiagnosticInfo",                s.info,    nil,      m.italic },
                        { "DiagnosticHint",                s.hint,    nil,      m.italic },
                        { "DiagnosticWarning",             s.warning, nil,      m.italic },
                        { "DiagnosticWarn",                s.warning, nil,      m.italic },
                        { "DiagnosticError",               s.error,   nil,      m.italic },

                        -- Indicators
                        { "LspDiagnosticsSignInformation", s.info,    '21262f', m.italic },
                        { "LspDiagnosticsSignHint",        s.hint,    '21262f', m.italic },
                        { "LspDiagnosticsSignWarning",     s.warning, '21262f', m.italic },
                        { "LspDiagnosticsSignError",       s.error,   '21262f', m.italic },

                        -- Diff mode
                        { "DiffAdd",                       s.ok },
                        { "DiffChange",                    s.warning },
                        { "DiffDelete",                    s.error },
                        { "DiffText",                      s.info },

                        -- SignColumn
                        { "SignColumn",                    nil,       '21262f' },
                        { "GitSignsAdd",                   s.ok,      '21262f' },
                        { "GitSignsChange",                s.warning, '21262f' },
                        { "GitSignsDelete",                m.error,   '21262f' },


                    }
                }
            })
             vim.cmd([[colorscheme palette]])
        end,
    },
}
