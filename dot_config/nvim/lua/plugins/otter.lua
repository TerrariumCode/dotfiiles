-- provides lsp features, including code completion, for code embedded in other documents
return {
    "jmbuhr/otter.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        -- enable LSP features and code completion for code embedded in mise files
        vim.api.nvim_create_autocmd({ "FileType" }, {
            pattern = { "toml" },
            group = vim.api.nvim_create_augroup("EmbedToml", {}),
            callback = function()
                require("otter").activate()
            end,
        })
    end,
}
