-- :fennel:1749562827
return {"williamboman/mason-lspconfig.nvim", dependencies = "williamboman/mason.nvim", event = "VeryLazy", opts = {ensure_installed = {"clangd"}}}