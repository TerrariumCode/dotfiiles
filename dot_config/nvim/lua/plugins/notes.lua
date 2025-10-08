-- Scratch plugin
return {
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = false,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            picker = {
                name = "telescope.nvim",
            },
            workspaces = {
                {
                    name = "personal",
                    path = "~/Documents/ObsiVault/",
                    overrides = {
                        notes_subdir = "dailies",
                    },
                },
            },
        },
    },
    {
        "leobeosab/brr.nvim",
        opts = {
            root = vim.fn.expand "~" .. "/Documents/ObsiVault/scratches",
            style = {
                width = 0.8,
                height = 0.8,
                title_padding = 2
            }
        },
    },
}
