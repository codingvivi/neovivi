{1 :goolord/alpha-nvim
 :dependencies {1 :nhattVim/alpha-ascii.nvim :opts {:header :random}}
 :event :VimEnter
 :config (fn []
           (local alpha (require :alpha))
           (local dashboard (require :alpha.themes.dashboard))
           (set dashboard.section.buttons.val
                [(dashboard.button "SPC f f" "  Find File  "
                                   ":Telescope find_files<CR>")
                 (dashboard.button "SPC f o" "  Recent File  "
                                   ":Telescope oldfiles<CR>")
                 (dashboard.button "SPC f w" "  Find Word  "
                                   ":Telescope live_grep theme=ivy<CR>")
                 (dashboard.button "SPC f b" "  Bookmarks  "
                                   ":Telescope marks theme=ivy<CR>")
                 (dashboard.button "SPC f t" "  Themes  "
                                   ":Telescope colorscheme enable_preview=false<CR>")
                 (dashboard.button "SPC f s" "  Settings"
                                   ":e $MYVIMRC | :cd %:p:h <CR>")
                 (dashboard.button "SPC c i" "  Change header image"
                                   ":AlphaAsciiNext<CR>")])
           (vim.api.nvim_create_autocmd :User
                                        {:callback (fn []
                                                     (local stats
                                                            ((. (require :lazy)
                                                                :stats)))
                                                     (local ms
                                                            (/ (math.floor (+ (* stats.startuptime
                                                                                 100)
                                                                              0.5))
                                                               100))
                                                     (set dashboard.section.footer.val
                                                          [" "
                                                           (.. " Loaded "
                                                               stats.loaded "/"
                                                               stats.count
                                                               " plugins  in "
                                                               ms " ms ")])
                                                     (pcall vim.cmd.AlphaRedraw))
                                         :once true
                                         :pattern :LazyVimStarted})
           (alpha.setup dashboard.opts))}
