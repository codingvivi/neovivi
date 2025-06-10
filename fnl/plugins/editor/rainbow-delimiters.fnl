{1 :HiPhish/rainbow-delimiters.nvim
 :enabled false
 :event [:BufReadPre :BufNewFile]
 :config (fn []
           (local rainbow-delimiters (require :rainbow-delimiters))
           (set vim.g.rainbow_delimiters 
                {:highlight [:RainbowDelimiterCyan
                             :RainbowDelimiterOrange
                             :RainbowDelimiterBlue
                             :RainbowDelimiterGreen
                             :RainbowDelimiterViolet
                             :RainbowDelimiterYellow
                             :RainbowDelimiterRed]})

                             
;;           (vim.cmd "highlight rainbowdelimiterCyan  guifg=#3ddbd9 ctermfg=white")
;;           (vim.cmd "highlight RainbowDelimiterOrange  guifg=#007d79 ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterBlue  guifg=#08bdba ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterGreen  guifg=#005d5d ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterViolet  guifg=#009d9a ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterRed  guifg=#004144 ctermfg=White")         
;;           (vim.cmd "highlight RainbowDelimiterYellow  guifg=#d9fbfb ctermfg=White"))}
           (vim.cmd "highlight rainbowdelimiterCyan  guifg=#3ddbd9 ctermfg=white")
           (vim.cmd "highlight RainbowDelimiterOrange  guifg=#ee5396 ctermfg=White")
           (vim.cmd "highlight RainbowDelimiterBlue  guifg=#33b1ff ctermfg=White")
           (vim.cmd "highlight RainbowDelimiterGreen  guifg=#42be65 ctermfg=White")
           (vim.cmd "highlight RainbowDelimiterViolet  guifg=#ffffff ctermfg=White")
           (vim.cmd "highlight RainbowDelimiterRed  guifg=#491d8b ctermfg=White")         
           (vim.cmd "highlight RainbowDelimiterYellow  guifg=#fa4d56 ctermfg=White"))}
;;           (vim.cmd "highlight rainbowdelimiterCyan  guifg=#3ddbd9 ctermfg=white")
;;           (vim.cmd "highlight RainbowDelimiterOrange  guifg=#ee5396 ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterBlue  guifg=#33b1ff ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterGreen  guifg=#42be65 ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterViolet  guifg=#ffffff ctermfg=White")
;;           (vim.cmd "highlight RainbowDelimiterRed  guifg=#fa4d56 ctermfg=White")         
;;           (vim.cmd "highlight RainbowDelimiterYellow  guifg=#d2a106 ctermfg=White"))}
           

                             
           
; from nyoom files
;           (vim.cmd "highlight RainbowDelimiterRed  guifg=#a2a9b0 ctermfg=White")
;           (vim.cmd "highlight RainbowDelimiterYellow  guifg=#a8a8a8 ctermfg=White")
;           (vim.cmd "highlight RainbowDelimiterBlue  guifg=#8d8d8d ctermfg=White")
;           (vim.cmd "highlight RainbowDelimiterOrange  guifg=#a2a9b0 ctermfg=White")
;           (vim.cmd "highlight RainbowDelimiterGreen  guifg=#8f8b8b ctermfg=White")
;           (vim.cmd "highlight RainbowDelimiterViolet  guifg=#ada8a8 ctermfg=White")
;           (vim.cmd "highlight rainbowdelimiterCyan  guifg=#878d96 ctermfg=white"))}
           


           
 ;                :highlight [:RainbowDelimiterRed {:guifg "#878d96"
  ;                                                 :ctermfg :White
   ;                          :RainbowDelimiterYellow {:guifg "#a8a8a8" :ctermfg :White}

    ;                          :RainbowDelimiterBlue {:guifg "#8d8d8d" :ctermfg :White}
     ;                         :RainbowDelimiterOrange {:guifg "#a2a9b0" :ctermfg :White}
      ;                        :RainbowDelimiterGreen {:guifg "#8f8b8b" :ctermfg :White}
       ;                       :RainbowDelimiterViolet {:guifg "#ada8a8" :ctermfg :White}
        ;                      :RainbowDelimiterCyan {:guifg "#878d96" }}))}

    
;(local oxocarbon (or (and (= vim.o.background :dark)
;                          {: base00 "#161616"
;                           :base01 (blend-hex base00 base06 0.085)
;                           :base02 (blend-hex base00 base06 0.18)
;                           :base03 (blend-hex base00 base06 0.3)
;                           :base04 (blend-hex base00 base06 0.82)
;                           :base05 (blend-hex base00 base06 0.95)
;                           : base06 "#ffffff"
;                           :base07 "#08bdba"
;                           :base08 "#3ddbd9"
;                           : base09 "#78a9ff"
;                           :base10 "#ee5396"
;                           :base11 "#33b1ff"
;                           :base12 "#ff7eb6"
;                           :base13 "#42be65"
;                           :base14 "#be95ff"
;                           :base15 "#82cfff"
;                           :blend "#131313"
;                           :none :NONE}
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
;                      :none :NONE}))E}
