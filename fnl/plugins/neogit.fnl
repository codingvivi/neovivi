{1 :NeogitOrg/neogit
 :event :VeryLazy ;; Speed up startup
 ;:cmd [:Neogit] ;; makes opening slow
 ;:keys [:<leader>gg :<leader>gcc]
 :dependencies [:nvim-lua/plenary.nvim        ;; required
                :sindrets/diffview.nvim ;;optional
                :ibhagwan/fzf-lua]             ;; optional
 :opts {:integrations {:diffview true
                       :fzf_lua true}
        :graph_style :unicode
        :sections {:rebase {:folded true :hidden false}
                   :recent {:folded false :hidden false}
                   :sequencer {:folded false :hidden false}
                   :staged {:folded false :hidden false}
                   :stashes {:folded true :hidden false}
                   :unmerged_pushRemote {:folded false :hidden false}
                   :unmerged_upstream {:folded false :hidden false}
                   :unpulled_pushRemote {:folded true :hidden false}
                   :unpulled_upstream {:folded true :hidden false}
                   :unstaged {:folded false :hidden false}
                   :untracked {:folded false :hidden false}}
        :signs {:hunk ["" ""] :item [">" :v] :section [">" :v]}}
                

 :config true}
