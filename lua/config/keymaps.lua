-- :fennel:1749988484
local which_key_groups = {}
table.insert(which_key_groups, {mode = {"n", "v"}, [3] = {"[", group = "previous"}, [5] = {"]", group = "next"}, [7] = {"g", group = "go"}, [9] = {"z", group = "view, spell"}, [11] = {"<leader>", group = "leader"}, [13] = {"<leader>m", group = "local leader"}})
vim.keymap.set({"n"}, "<esc>", "<esc><cmd>noh<cr>", {desc = "No highlight escape", silent = true})
vim.keymap.set({"n"}, "gr", "gd[{V%%::s/<CR>///gc<Left><Left><Left>", {desc = "Replace definition locally", silent = true})
vim.keymap.set({"n"}, "gR", "gD:%%s/<CR>///gc<Left><Left><Left>", {desc = "Replace definition locally", silent = true})
vim.keymap.set({"n"}, "<leader><space>", "<cmd>FzfLua files<CR>", {desc = "TODO find project", silent = true})
vim.keymap.set({"n"}, "<leader>'", "<cmd>FzfLua resume<CR>", {desc = "Resume last search", silent = true})
vim.keymap.set({"n"}, "<leader>/", "<cmd>FzfLua live_grep<CR>", {desc = "Search project", silent = true})
vim.keymap.set({"n"}, "<leader><", "<cmd>FzfLua buffers<CR>", {desc = "Switch Buffer", silent = true})
table.insert(which_key_groups, {"<leader>b", group = "buffer"})
vim.keymap.set({"n"}, "<leader>b[", "<cmd>bprevious<CR>", {desc = "Previous buffer", silent = true})
vim.keymap.set({"n"}, "<leader>bl", "<cmd>e#<CR>", {desc = "Switch to last buffer", silent = true})
vim.keymap.set({"n"}, "<leader>bp", "<cmd>bprevious<CR>", {desc = "Previous buffer", silent = true})
vim.keymap.set({"n"}, "<leader>b]", "<cmd>bnext<CR>", {desc = "Next buffer", silent = true})
vim.keymap.set({"n"}, "<leader>bn", "<cmd>bnext<CR>", {desc = "Next buffer", silent = true})
vim.keymap.set({"n"}, "<leader>bd", "<cmd>q<CR>", {desc = "Kill buffer", silent = true})
table.insert(which_key_groups, {"<leader>c", group = "code"})
vim.keymap.set({"n"}, "<leader>cc", "<cmd>make<CR>", {desc = "compile code", silent = true})
table.insert(which_key_groups, {"<leader>f", group = "file"})
vim.keymap.set({"n"}, "<leader>f.", "<cmd>FzfLua files cwd=~/<CR>", {desc = "Find in personal neovim config", silent = true})
vim.keymap.set({"n"}, "<leader>fC", "<cmd>%y+<CR>", {desc = "Copy file contents", silent = true})
vim.keymap.set({"n"}, "<leader>fD", "<cmd>bw<CR>", {desc = "Delete this file", silent = true})
vim.keymap.set({"n"}, "<leader>ff", "<cmd>FzfLua files<CR>", {desc = "Find file", silent = true})
vim.keymap.set({"n"}, "<leader>fp", "<cmd>FzfLua files cwd=~/.config/nvim/<CR>", {desc = "Find in personal neovim config", silent = true})
vim.keymap.set({"n"}, "<leader>fP", "<cmd>Oil ~/.config/nvim/<CR>", {desc = "Browse personal neovim config", silent = true})
vim.keymap.set({"n"}, "<leader>fr", "<cmd>FzfLua oldfiles<CR>", {desc = "Find recent file", silent = true})
vim.keymap.set({"n"}, "<leader>fs", "<cmd>w<CR>", {desc = "Save file", silent = true})
table.insert(which_key_groups, {"<leader>fa", group = "all files"})
vim.keymap.set({"n"}, "<leader>fas", "<cmd>wa<CR>", {desc = "Save all files", silent = true})
vim.keymap.set({"n"}, "<leader>fq", "<cmd>q<CR>", {desc = "Quit file", silent = true})
vim.keymap.set({"n"}, "<leader>fy", "<cmd>let @+ = expand('%')<CR>", {desc = "Yank replative path", silent = true})
vim.keymap.set({"n"}, "<leader>fY", "<cmd>let @+ = expand('%:p')<CR>", {desc = "Yank full path", silent = true})
vim.keymap.set({"n"}, "-", "<cmd>Oil<CR>", {desc = "Open file browser", silent = true})
table.insert(which_key_groups, {"<leader>g", group = "git"})
vim.keymap.set({"n"}, "<leader>gg", "<cmd>Neogit<CR>", {desc = "Open Neogit", silent = true})
vim.keymap.set({"n"}, "<leader>gcc", "<cmd>Neogit<CR>", {desc = "Create commit", silent = true})
table.insert(which_key_groups, {"<leader>h", group = "help (& cmd search)"})
vim.keymap.set({"n"}, "<leader>ht", "<cmd>FzfLua colorschemes<CR>", {desc = "search and preview themes", silent = true})
vim.keymap.set({"n"}, "<leader>hT", "<cmd>Hardtime toggle<CR>", {desc = "Toggle hardtime mode", silent = true})
table.insert(which_key_groups, {"<leader>hb", group = "bindings"})
vim.keymap.set({"n"}, "<leader>hbf", "<cmd>FzfLua keymaps<CR>", {desc = "search keymaps", silent = true})
vim.keymap.set({"n"}, "<leader>hbt", "<cmd>WhichKey<CR>", {desc = "show which-key help", silent = true})
vim.keymap.set({"n"}, "<leader>hx", "<cmd>FzfLua commands<CR>", {desc = "search commands", silent = true})
table.insert(which_key_groups, {"<leader>n", group = "roam"})
table.insert(which_key_groups, {"<leader>o", group = "org"})
table.insert(which_key_groups, {"<leader>s", group = "search"})
vim.keymap.set({"n"}, "<leader>sh", "<cmd>FzfLua helptags<CR>", {desc = "Search help tags", silent = true})
table.insert(which_key_groups, {"<leader>w", group = "window"})
vim.keymap.set({"n"}, "<leader>wx", "<C-w>x", {desc = "Swap windows", silent = true})
vim.keymap.set({"n"}, "<leader>ws", "<cmd>split<CR>", {desc = "split window horizontally", silent = true})
vim.keymap.set({"n"}, "<leader>wv", "<cmd>vsplit<CR>", {desc = "split window vertically", silent = true})
vim.keymap.set({"n"}, "<leader>wh", "<C-w>h", {desc = "focus window left", silent = true})
vim.keymap.set({"n"}, "<leader>wj", "<C-w>j", {desc = "focus window below", silent = true})
vim.keymap.set({"n"}, "<leader>wk", "<C-w>k", {desc = "focus window above", silent = true})
vim.keymap.set({"n"}, "<leader>wl", "<C-w>l", {desc = "focus window right", silent = true})
table.insert(which_key_groups, {"<leader>q", group = "quit (and load)"})
vim.keymap.set({"n"}, "<leader>ql", "<cmd>:source lastlocalsession<CR>", {desc = "Load last session in cwd", silent = true})
vim.keymap.set({"n"}, "<leader>qL", "<cmd>:source ~/.local/state/nvim/lastsession<CR>", {desc = "Load last session in .local/state", silent = true})
vim.keymap.set({"n"}, "<leader>qs", "<cmd>:mksession! lastlocalsession<CR><cmd>:qa<CR>", {desc = "Save session in cwd and quit", silent = true})
vim.keymap.set({"n"}, "<leader>qS", "<cmd>:mksession! ~/.local/state/nvim/lastsession<CR>", {desc = "Save session in .local/state and quit", silent = true})
vim.keymap.set({"n"}, "<leader>qq", "<cmd>:qa<CR>", {desc = "Quit all", silent = true})
vim.keymap.set({"n"}, "<leader>qQ", "<cmd>:qa!<CR>", {desc = "Quit all without saving", silent = true})
local which_key = require("which-key")
return which_key.add(which_key_groups)