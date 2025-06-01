{1 :nyoom-engineering/oxocarbon.nvim
  :lazy false
  :config (fn [] 
            (vim.cmd.colorscheme :oxocarbon))}


;(local base00 "#161616")
;(local base06 "#ffffff")
;(local base09 "#78a9ff")
;(local oxocarbon (or (and (= vim.o.background :dark)
;                          {:base00 "#161616"
;                           :base01 "#262626"
;                           :base02 "#393939"
;                           :base03 "#525252"
;                           :base04 "#d0d0d0"
;                           :base05 "#f2f2f2"
;                           :base06 "#ffffff"
;                           :base07 "#08bdba"
;                           :base08 "#3ddbd9"
;                           :base09 "#78a9ff"
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
