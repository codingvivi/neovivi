(import-macros {: map!} :hibiscus.vim)
{1 :ggandor/leap.nvim
 :enabled false
 :lazy false
 :event :VeryLazy
 :config (fn []
           (let [leap (require :leap)]
             (map! [n] :gj #(leap.leap) "Leap forward")))}

;:config (fn [] ((. (require :leap) :create_default_mappings)))}
