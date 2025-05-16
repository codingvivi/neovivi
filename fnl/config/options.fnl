(import-macros {: set!} :hibiscus.vim)


;; speedups
(set! updatetime 250)
(set! timeoutlen 400) ;; time wating before key combo gets executed?
;;ui 
(set! number true)              ;; show line numbers
(set! relativenumber true)      ;; show relative line numbers
(set! colorcolumn :80)        ;; column that signifies 80 chars
(set! cmdheight 2)               ;; commandline height
(set! laststatus 3)              ;; one status line per vim instance
(set! signcolumn "yes:1")       ;; column for notis (always there like this?)
;; input 
(set! mouse "a")       ;; allow the mouse to be used in neovim, in command only
;;(set! mousescroll "ver:3,hor:6") ;;disable mouse scroll (git gud) (doesn't work on ghostty, prolly ghosttys fault
(set! splitkeep :screen)    ;;keeps cursor in relative position during scroll
(set! clipboard :unnamedplus) ;; yank from/paste to system clipboard
;; better grep?
;; (set! grepprg "rg --vimgrep")

;; (set! grepformat "%f:%l:%c:%m")
;; backups
(set! undofile) ;; create backup file with undo history

;;shortmess:append"(set! c"

;; editor 
;; -- display
(set! conceallevel 1)           ;; so that `` is visible in markdown files
(set! showtabline 1)            ;;(set! 2" always show tabs, "1" for only when >=2 tabs
(set! termguicolors true)
(set! wrap false)               ;; doesn't warp out of window text to next line
(set! linebreak false)  
(set! incsearch true)           ;; inc highlights during search i think? 
(set! fillchars {:eob " "
                  :vert " "
                  :horiz " "
                  :diff "╱"
                  :foldclose ""
                  :foldopen ""
                  :fold " "
                  :msgsep "─"})
;;(set! listchars { :tab " ──"
;;                  :trail "·"
;;                  :nbsp "␣"
;;                  :precedes "«"
;;                  :extends "»"})

;(set! diffopt+ "linematch:60")  ;; supposedly reduces lag in diffview
;; ---- spelling
(set! spell true)
(set! spelllang [:en :de])     ;; !! might not have compiled correctly languages to spell check for)
;; -- behavior
(set! smartindent false) ;; make indenting smarter again
(set! indentexpr "")
(set! shiftwidth 2)    ;; number of spaces when you press tab
(set! tabstop 2)       ;; number of spaces neovim inserts per tab when parsing doc
(set! textwidth 0)              ;; turn off auto inserting breaks after x chars
(set! infercase)    ;; applies case of selected completion when using completion
;; ---- folding
(set! foldcolumn :1) ;;sets width for a column with fold indicators
(set! foldlevel 20)
(set! foldmethod :expr)
(set! foldexpr "nvim_treesitter#foldexpr()")
;; -- misc
(set! hidden true)     ;; Enable background buffers
(set! splitbelow true)           ;; new splits bellow
(set! splitright true)           ;; new vsplits right
