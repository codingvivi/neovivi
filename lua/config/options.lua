-- :fennel:1749784985
vim.opt["updatetime"] = 250
vim.opt["timeoutlen"] = 400
vim.opt["number"] = true
vim.opt["relativenumber"] = true
vim.opt["cmdheight"] = 2
vim.opt["laststatus"] = 3
vim.opt["signcolumn"] = "yes:1"
vim.opt["mouse"] = "c"
vim.opt["splitkeep"] = "screen"
vim.opt["clipboard"] = "unnamedplus"
vim.opt["undofile"] = true
vim.opt["conceallevel"] = 1
vim.opt["showtabline"] = 1
vim.opt["termguicolors"] = true
vim.opt["wrap"] = false
vim.opt["linebreak"] = false
vim.opt["incsearch"] = true
vim.opt["fillchars"] = {eob = " ", vert = " ", horiz = " ", diff = "\226\149\177", foldclose = "\239\145\160", foldopen = "\239\145\188", fold = " ", msgsep = "\226\148\128"}
vim.opt["spell"] = true
vim.opt["spelllang"] = {"en", "de"}
vim.opt["smartindent"] = false
vim.opt["indentexpr"] = ""
vim.opt["shiftwidth"] = 2
vim.opt["tabstop"] = 2
vim.opt["textwidth"] = 0
vim.opt["infercase"] = true
vim.opt["foldcolumn"] = "1"
vim.opt["foldlevel"] = 20
vim.opt["foldmethod"] = "expr"
vim.opt["foldexpr"] = "nvim_treesitter#foldexpr()"
vim.opt["hidden"] = true
vim.opt["splitbelow"] = true
vim.opt["splitright"] = true
return nil