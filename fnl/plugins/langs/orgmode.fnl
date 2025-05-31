{1 :nvim-orgmode/orgmode
 :event :VeryLazy
 :ft [:org]
 :opts {:org_agenda_files "~/org"
        :org_default_notes_file "~/org/refile.org"
        :org_todo_keyword_faces {:TODO ":foreground #24a148 :weight bold" ; for (color) overwrite
                                 :DONE ":foreground #525252 :weight bold" 
                                 :IDEA ":foreground #42be65 :weight bold" 
                                 :KILL ":foreground #fa4d56 :weight bold" 
                                 :WAITING ":foreground #f1c21b :weight bold"}
        :org_todo_keywords [:TODO
                            :WAITING
                            :KILL
                            :DONE]}}
                            ;:DELEGATED]}}

        


                                  


;(local base00 "#161616")
;(local base06 "#ffffff")
;(local base09 "#78a9ff")
;(local oxocarbon (or (and (= vim.o.background :dark)
;                          {: base00
;                           :base01 (blend-hex base00 base06 0.085)
;                           :base02 (blend-hex base00 base06 0.18)
;                           :base03 (blend-hex base00 base06 0.3)
;                           :base04 (blend-hex base00 base06 0.82)
;                           :base05 (blend-hex base00 base06 0.95)
;                           : base06
;                           :base07 "#08bdba"
;                           :base08 "#3ddbd9"
;                           : base09
;                           :base10 "#ee5396"
;                           :base11 "#33b1ff"
;                           :base12 "#ff7eb6"
;                           :base13 "#42be65"
;                           :base14 "#be95ff"
;                           :base15 "#82cfff"
;                           :blend "#131313"
;                           :none :NONE})
;                     {:base00 base06
;                      :base01 (blend-hex base00 base06 0.95)
;                      :base02 (blend-hex base00 base06 0.82)
;                      :base03 base00
;                      :base04 "#37474F"
;                      :base05 "#90A4AE"
;                      :base06 "#525252"
;                      :base07 "#08bdba"
;                      :base08 "#ff7eb6"
;                      :base09 "#ee5396"
;                      :base10 "#FF6F00"
;                      :base11 "#0f62fe"
;                      :base12 "#673AB7"
;                      :base13 "#42be65"
;                      :base14 "#be95ff"
;                      :base15 "#FFAB91"
;                      :blend "#FAFAFA"
;                      :none :NONE}))
