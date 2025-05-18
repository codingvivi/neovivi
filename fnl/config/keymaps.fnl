(import-macros {: map!} :hibiscus.vim)
;; (local harpoon (require :harpoon)) ;;testing

(map! [n] :<esc> :<esc><cmd>noh<cr>  "No highlight escape")

;; w -- window stuff
(map! [n] :<leader>wx "<C-w>x" "Swap windows")
(map! [n] :<leader>ws :<cmd>split<CR> "split window horizontally")
(map! [n] :<leader>wv :<cmd>vsplit<CR> "split window vertically")
(map! [n] :<leader>wh :<C-w>h "focus window left")
(map! [n] :<leader>wj :<C-w>j "focus window below")
(map! [n] :<leader>wk :<C-w>k "focus window above")
(map! [n] :<leader>wl :<C-w>l "focus window right")

;; b buffer stuff
(map! [n] "<leader>b[" :<cmd>bprevious<CR> "Previous buffer")
(map! [n] :<leader>bl "<cmd>e#<CR>" "Switch to last buffer")
(map! [n] :<leader>bp :<cmd>bprevious<CR> "Previous buffer")
(map! [n] "<leader>b]" :<cmd>bnext<CR> "Next buffer")
(map! [n] :<leader>bn :<cmd>bnext<CR> "Next buffer")
(map! [n] :<leader>bd :<cmd>q<CR> "Kill buffer")

;;;; harpoon
;;(map! [n] "<leader>ba" (fn [] (: (harpoon:list) :add) "add buffer to Harpoon"))
;;(map! [n] "<leader>bh" (fn [] (: (harpoon.ui:toggle_quick_menu (harpoon:list)) :add) "Open harpoon UI"))

;; misc harpoon
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 1) "Select Harpoon buffer 1"))
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 2) "Select Harpoon buffer 2"))
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 3) "Select Harpoon buffer 3"))
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 4) "Select Harpoon buffer 4"))

;; FZF Lua
(map! [n] :<leader><space> "<cmd>FzfLua files<CR>" "TODO find project")
(map! [n] "<leader>'" "<cmd>FzfLua resume<CR>" "Resume last search")
(map! [n] :<leader>/ "<cmd>FzfLua live_grep<CR>" "Search project")
(map! [n] :<leader>< "<cmd>FzfLua buffers<CR>" "Switch Buffer")

;; f -- file stuff
(map! [n] :<leader>fD :<cmd>bw<CR> "Delete this file")
(map! [n] :<leader>fs  "<cmd>w<CR>" "Save file")
(map! [n] :<leader>fy "<cmd>let @+ = expand('%')<CR>"
      "Yank replative path")
(map! [n] :<leader>fY "<cmd>let @+ = expand('%:p')<CR>"
      "Yank full path")
(map! [n] :<leader>fC "<cmd>%y+<CR>" "Copy file contents")
;;;; search
(map! [n] :<leader>ff "<cmd>FzfLua files<CR>" "Find file")
(map! [n] :<leader>fr "<cmd>FzfLua oldfiles<CR>" "Find recent file")

(map! [n] :- "<cmd>Oil<CR>" "Open file browser")


;; g - git
(map! [n] :<leader>gg "<cmd>Neogit<CR>" "Open Neogit")
(map! [n] :<leader>gcc "<cmd>Neogit<CR>" "Create commit")

;; m - local leader
;;;; typst

;; s - search
(map! [n] "<leader>sx" "<cmd>FzfLua commands<CR>" :M-x)
(map! [n] "<leader>sh" "<cmd>FzfLua helptags<CR>" "Search help tags")


(map! [n] :gr "gd[{V%%::s/<CR>///gc<Left><Left><Left>" "Replace definition locally")
(map! [n] :gR "gD:%%s/<CR>///gc<Left><Left><Left>" "Replace definition locally")
