{1 :coffebar/neovim-project
 :dependencies [[:nvim-lua/plenary.nvim]
                [:ibhagwan/fzf-lua
                 [:folke/snacks.nvim]
                 [:Shatur/neovim-session-manager]]]
 :init (fn [] (vim.opt.sessionoptions:append :globals))
 :lazy false
 :opts {:picker {:type :fzf-lua} :projects ["~/.config/nvim/*"]}
 :priority 100}
