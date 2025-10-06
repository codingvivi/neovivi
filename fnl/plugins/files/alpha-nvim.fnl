{1 :goolord/alpha-nvim
 ;:event :VimEnter
 :dependencies [:nvim-tree/nvim-web-devicons]
 :config (fn []
           ;; 1. Only require the base 'alpha' module
           (local alpha (require :alpha))
           ;; 2. The button helper function (remains the same)

           (fn button [sc txt keybind]
             (let [sc- (: (sc:gsub "%s" "") :gsub :SPC :<leader>)
                   opts {:position :center
                         :shortcut sc
                         :cursor 5
                         :width 50
                         :align_shortcut :right
                         :hl :Special
                         :hl_shortcut :Comment}]
               (when keybind
                 (set opts.keymap
                      [:n
                       sc-
                       keybind
                       {:noremap true :silent true :nowait true}]))

               (fn on-press []
                 (let [key (vim.api.nvim_replace_termcodes (or keybind
                                                               (.. sc-
                                                                   :<Ignore>))
                                                           true false true)]
                   (vim.api.nvim_feedkeys key :t false)))

               {:type :button :val txt :on_press on-press : opts}))

           ;; 3. Define the footer section separately so we can modify it later.
           ;; We start it with a placeholder value.
           (local footer_section
                  {:type :text
                   :val "Loading startup time..."
                   :opts {:position :center :hl :Comment}})
           ;; 4. Build the complete alpha configuration table from scratch.
           (local alpha_config
                  {:layout [{:type :text
                             ;; fnlfmt: skip
                             :val (require :plugins.files.bonsaiescaped)
                             :opts {:position :center :hl :Comment}}
                            {:type :padding :val 1}
                            {:type :text
                             :val "neovivi!"
                             :opts {:position :center :hl :Comment}}
                            {:type :padding :val 2}
                            ;; Buttons
                            {:type :group
                             :val [(button "SPC f r"
                                           "  Recently opened files")
                                   (button "SPC p l" "  Reload last project")
                                   (button "SPC p p" "  Open project")
                                   (button "SPC o a" "  Open agenda")
                                   (button "SPC RET" "  Jump to bookmark")
                                   (button "SPC f p"
                                           "  Open private configuration")
                                   (button "SPC s h" "  Search help")]
                             :opts {:spacing 1}}
                            {:type :padding :val 2}
                            footer_section]})
           (vim.api.nvim_create_autocmd :User
                                        {:pattern :LazyVimStarted
                                         :once true
                                         :callback (fn []
                                                     (local stats
                                                            ((. (require :lazy)
                                                                :stats)))
                                                     (local time_ms
                                                            stats.startuptime)
                                                     (var text "")
                                                     (if (>= time_ms 1000)
                                                         (set text
                                                              (string.format "Loaded %d/%d plugins in %.2fs"
                                                                             stats.loaded
                                                                             stats.count
                                                                             (/ time_ms
                                                                                1000)))
                                                         (set text
                                                              (string.format "Loaded %d/%d plugins in %dms"
                                                                             stats.loaded
                                                                             stats.count
                                                                             time_ms)))
                                                     (set footer_section.val
                                                          text)
                                                     (pcall vim.cmd.AlphaRedraw))})
           (alpha.setup alpha_config))}
