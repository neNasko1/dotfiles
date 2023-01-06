local config = {
    options = {
        opt = {
            relativenumber = true,
            number = true,
            spell = false,
            signcolumn = "auto",
            wrap = false,
            swapfile = false,

            smartindent = true,
            autoindent = true,
            smarttab = true,
            tabstop = 4,
            shiftwidth = 4,
            langmap = 'чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM',
        },
    },

    header = {
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██   ████   ████   ██ ██      ██",
    },

    lsp = {
        servers = {
        },
        formatting = {
            format_on_save = {
                enabled = false,
            },
        }
    },

    mappings = {
        n = {
            ["dd"] = { "\"_dd" },
            ["p"] = { "\"_\"+p" },
        },
        v = {
            ["d"] = { "\"_d" },
            ["p"] = { "\"_\"+p" },
        },
    },

    plugins = {
        init = {
            ["akinsho/bufferline.nvim"] = { disable = true },
        },
        ["indent-o-matic"] = {
            max_lines = 2048,
            standard_widths = { 4 },
        },
    },
}

return config
