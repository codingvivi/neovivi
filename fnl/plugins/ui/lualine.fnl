{1 :nvim-lualine/lualine.nvim
 :dependencies [:nvim-tree/nvim-web-devicons]
 :event :VeryLazy
 :opts (fn []
         (local colors {:bg "#161616"
                        :blue "#82cfff"
                        :diffblue "#33b0ff"
                        :cyan "#3ddbda"
                        :darkblue "#78aaff"
                        :fg "#f2f2f2"
                        :green "#08bdba"
                        :alertgreen "#42be65"
                        :magenta "#ff7eb6"
                        :orange "#FF8800"
                        :red "#ee5296"
                        :alertred "#fa4d56"
                        :violet "#be96ff"
                        :yellow "#fddc69"})
         (local conditions
                {:buffer_not_empty (fn []
                                     (not= (vim.fn.empty (vim.fn.expand "%:t"))
                                           1))
                 :check_git_workspace (fn []
                                        (local filepath (vim.fn.expand "%:p:h"))
                                        (local gitdir
                                               (vim.fn.finddir :.git
                                                               (.. filepath ";")))
                                        (and (and gitdir (> (length gitdir) 0))
                                             (< (length gitdir)
                                                (length filepath))))
                 :hide_in_width (fn [] (> (vim.fn.winwidth 0) 80))})
         (local config {:inactive_sections {:lualine_a {}
                                            :lualine_b {}
                                            :lualine_c {}
                                            :lualine_x {}
                                            :lualine_y {}
                                            :lualine_z {}}
                        :options {:component_separators ""
                                  :section_separators ""
                                  :theme {:inactive {:c {:bg colors.bg
                                                         :fg colors.fg}}
                                          :normal {:c {:bg colors.bg
                                                       :fg colors.fg}}}}
                        :sections {:lualine_a {}
                                   :lualine_b {}
                                   :lualine_c {}
                                   :lualine_x {}
                                   :lualine_y {}
                                   :lualine_z {}}})

         (fn ins-left [component]
           (table.insert config.sections.lualine_c component))

         (fn ins-right [component]
           (table.insert config.sections.lualine_x component))

         (ins-left {1 (fn [] "▊")
                    :color {:fg colors.darkblue}
                    :padding {:left 0 :right 1}})
         (ins-left {1 (fn [] "")
                    :color (fn []
                             (local mode-color
                                    {"\022" colors.orange
                                     " " colors.blue
                                     :! colors.red
                                     :R colors.violet
                                     :Rv colors.violet
                                     :S colors.orange
                                     :V colors.blue
                                     :c colors.magenta
                                     :ce colors.red
                                     :cv colors.red
                                     :i colors.green
                                     :ic colors.yellow
                                     :n colors.red
                                     :no colors.red
                                     :r colors.cyan
                                     :r? colors.cyan
                                     :rm colors.cyan
                                     :s colors.orange
                                     :t colors.red
                                     :v colors.blue})
                             {:fg (. mode-color (vim.fn.mode))})
                    :padding {:right 1}})
         (ins-left {1 :filesize :cond conditions.buffer_not_empty})
         (ins-left {1 :filename
                    :color {:fg colors.magenta :gui :bold}
                    :cond conditions.buffer_not_empty})
         (ins-left [:location])
         (ins-left {1 :progress :color {:fg colors.fg :gui :bold}})
         (ins-left {1 :diagnostics
                    :diagnostics_color {:error {:fg colors.red}
                                        :info {:fg colors.cyan}
                                        :warn {:fg colors.yellow}}
                    :sources [:nvim_diagnostic]
                    :symbols {:error " " :info " " :warn " "}})
         (ins-left [(fn [] "%=")])
         (ins-left {1 (fn []
                        (local msg "No Active Lsp")
                        (local buf-ft
                               (vim.api.nvim_get_option_value :filetype
                                                              {:buf 0}))
                        (local clients (vim.lsp.get_active_clients {:bufnr 0}))
                        (when (not (next clients)) (lua "return msg"))
                        (local client-names {})
                        (each [_ client (ipairs clients)]
                          (table.insert client-names client.name))
                        (or (and (> (length client-names) 0)
                                 (table.concat client-names ", "))
                            msg))
                    :color {:fg "#ffffff" :gui :bold}
                    :icon " LSP:"})
         (ins-right {1 "o:encoding"
                     :color {:fg colors.green :gui :bold}
                     :cond conditions.hide_in_width
                     :fmt string.upper})
         (ins-right {1 :fileformat
                     :color {:fg colors.green :gui :bold}
                     :fmt string.upper
                     :icons_enabled false})
         (ins-right {1 :branch
                     :color {:fg colors.violet :gui :bold}
                     :icon ""})
         (ins-right {1 :diff
                     :cond conditions.hide_in_width
                     :diff_color {:added {:fg colors.green}
                                  :modified {:fg colors.diffblue}
                                  :removed {:fg colors.alertred}}
                     :symbols {:added " " :modified "󰝤 " :removed " "}})
         (ins-right {1 (fn [] "▊")
                     :color {:fg colors.blue}
                     :padding {:left 1}})
         config)}  
