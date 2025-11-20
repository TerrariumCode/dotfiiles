return {
    "chrisgrieser/nvim-rip-substitute",
    cmd = "RipSubstitute",
    opts = {},
    keys = {
        {
            "<leader>fr",
            function() require("rip-substitute").sub() end,
            mode = { "n", "x" },
            desc = " rip substitute",
        },
    },
}
