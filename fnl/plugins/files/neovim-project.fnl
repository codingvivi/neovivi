{1 :coffebar/neovim-project
 :dependencies [[:nvim-lua/plenary.nvim]
                [:ibhagwan/fzf-lua]
                {1 :folke/snacks.nvim :opts {}}
                [:Shatur/neovim-session-manager]]
 :init (fn [] (vim.opt.sessionoptions:append :globals))
 :lazy false
 :opts {:picker {:type :fzf-lua}
        :last_session_on_startup false
        :projects ["~/.config/nvim/" "~/Development/Projects/*/*"]}
 :priority 100}
