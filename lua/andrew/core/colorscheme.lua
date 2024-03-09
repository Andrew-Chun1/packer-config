require("catppuccin").setup({
    flavor = "",
    integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true,
    },
})


vim.cmd.colorscheme "catppuccin-mocha"
