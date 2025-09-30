{1 :folke/which-key.nvim
 :dependencies :nvim-tree/nvim-web-devicons
 :event :VeryLazy
 ;:opts_extend [:spec]
 :opts {:icons {:breadcrumb "»" :separator "->" :group "+"}
        ;:win {:border :solid}
        :layout {:spacing 3}
        :align :center}}
;        :spec [;{:mode [:n :v]}
;               ["<leader>c" {:group "code"}]
;               ["<leader>d" {:group "debug"}]}
; :config (fn [_ opts]
;            (let [wk (require :which-key)]
;                (wk.setup opts)))}
;        
 ;:config (fn []
 ;   (local wk (require :which-key))
 ;   (wk.add [
 ;       {:<leader>f {:group :+file}}]))
        



