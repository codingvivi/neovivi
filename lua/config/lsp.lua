-- :fennel:1758103686
vim.diagnostic.config({virtual_text = true})
return vim.lsp.enable({"clangd", "neocmake", "fennel_ls", "basedpyright", "lemminx", "tinymist"})