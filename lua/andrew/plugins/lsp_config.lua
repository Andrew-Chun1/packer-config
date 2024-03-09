require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 
        "lua_ls", 
        "cssls",
        "cssmodules_ls",
        "eslint",
        "gopls",
        "html",
        "quick_lint_js",
        "tsserver",
        "pyre",
        "tailwindcss"
    }
})


local on_attach = function(_, _)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

--lua
require("lspconfig").lua_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities
 }

--css
require("lspconfig").cssls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

--css
require("lspconfig").cssmodules_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

--go
require("lspconfig").gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
    cmd = {"gopls"},
    filetypes = { "go", "gomod", "gowork", "gotmpl"},
    gopls = {
        completeUnimported = true,
    },
}

--html
require("lspconfig").html.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

--typescript
require("lspconfig").tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

--tailwind
require("lspconfig").tailwindcss.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

--python
require("lspconfig").pyre.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

--javascript
require("lspconfig").quick_lint_js.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

--javascript
require("lspconfig").eslint.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

