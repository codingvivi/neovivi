vim.diagnostic.config({virtual_text = true})
return vim.lsp.enable({"clangd", "neocmake", "fennel_ls", "basedpyright", "lemminx", "tinymist"})