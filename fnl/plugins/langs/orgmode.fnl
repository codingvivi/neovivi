{1 :nvim-orgmode/orgmode
 ;:event :VeryLazy
 ;:keys [:<leader>oa :<leader>oc] 
 ;:ft [:org]
 :opts {:org_default_notes_file "~/org/refile.org"
        :org_log_done :time
        :org_log_repeat :time
        :org_startup_indented true
        :org_blank_before_new_entry {:heading false :plain_list_item false}
        ;; Agenda
        :org_agenda_files "~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/**/*"
        :org_agenda_span :month
        ;; Custom views
        :org_agenda_custom_commands {:r {:description "Record digging stuff"
                                         :types [{:org_agenda_overriding_header "Record-digging"
                                                  :type :tags_todo
                                                  :match "+dig"}
                                                 {:org_agenda_overriding_header "ID-ing"
                                                  :type :tags_todo
                                                  :match "+ID"}
                                                 {:org_agenda_overriding_header "Record-getting"
                                                  :type :tags_todo
                                                  :match "+get"}]}
                                     :p {:description "Personal tasks"
                                         :types [{:org_agenda_overriding_header "Unfinished tasks"
                                                  :type :tags_todo
                                                  :match "+personal"}
                                                 {:org_agenda_overriding_header "Untagged"
                                                  :type :tags_todo
                                                  :match "{$^}"}]}
                                     :g {:description ":pleading:"
                                         :types [{:org_agenda_overriding_header "Tagged :gf:"
                                                  :type :tags_todo
                                                  :match "gf"}]}
                                     :o {:description "Larporator stuff"
                                         :types [{:org_agenda_overriding_header "Tagged idk"
                                                  :type :tags_todo
                                                  :match "42h"}]}
                                     :4 {:description "42 prep"
                                         :types [{:org_agenda_overriding_header "Tagged :42school:"
                                                  :type :tags_todo
                                                  :match "42school"}]}}
        ;                                                  :org_agenda_tag_filter_preset :personal}]}}
        ;                                                  :org_agenda_tag_filter_preset :personal}]}}
        ;; Keyword faces
        :org_todo_keyword_faces {:TODO ":foreground #42be65 :weight bold"
                                 ; for (color) overwrite
                                 :DONE ":foreground #525252 :weight bold"
                                 :IDEA ":foreground #42be65 :weight bold"
                                 :KILL ":foreground #fa4d56 :weight bold"
                                 :WAITING ":foreground #f1c21b :weight bold"}
        :org_todo_keywords ["TODO(t)" :IDEA :WAITING :| :KILL :DONE]
        ;:DELEGATED]}
        ; Mappings
        :mappings {:agenda {:org_agenda_add_note :<prefix>na}
                   ;:org_agenda_archive :<prefix>$
                   ;:org_agenda_clock_cancel :X
                   ;:org_agenda_clock_goto :<prefix>xj
                   ;:org_agenda_clock_in :I
                   ;:org_agenda_clock_out :O
                   ;:org_agenda_clockreport_mode :R
                   ;:org_agenda_day_view :vd
                   ;:org_agenda_deadline :<prefix>id
                   ;:org_agenda_earlier :b
                   ;:org_agenda_filter "/"
                   ;:org_agenda_goto :<TAB>
                   ;:org_agenda_goto_date :J
                   ;:org_agenda_goto_today "."
                   ;:org_agenda_later :f
                   ;:org_agenda_month_view :vm
                   ;:org_agenda_priority "<prefix>,"
                   ;:org_agenda_priority_down "-"
                   ;:org_agenda_priority_up "+"
                   ;:org_agenda_quit :q
                   ;:org_agenda_redo :r
                   ;:org_agenda_refile :<prefix>r
                   ;:org_agenda_schedule :<prefix>is
                   ;:org_agenda_set_effort :<prefix>xe
                   ;:org_agenda_set_tags :<prefix>t
                   ;:org_agenda_show_help :g?
                   ;:org_agenda_switch_to :<CR>
                   ;:org_agenda_todo :t
                   ;:org_agenda_toggle_archive_tag :<prefix>A
                   ;:org_agenda_week_view :vw
                   ;:org_agenda_year_view :vy
                   ;:capture {:org_capture_finalize :<C-c>
                   ;          :org_capture_kill :<prefix>k
                   ;          :org_capture_refile :<prefix>r
                   ;          :org_capture_show_help :g?}
                   ;:disable_all false
                   ;:edit_src {:org_edit_src_abort :<prefix>k
                   ;           :org_edit_src_save :<prefix>w
                   ;           :org_edit_src_save_exit "<prefix>'"
                   ;           :org_edit_src_show_help :g?}
                   ;:global {:org_agenda :<prefix>a :org_capture :<prefix>c}
                   ;:note {:org_note_finalize :<C-c> :org_note_kill :<prefix>k}
                   :org {;:org_add_note :<prefix>na}
                         ;      :org_archive_subtree :<prefix>$
                         ;      :org_babel_tangle :<prefix>bt
                         ;      :org_backward_heading_same_level "[["
                         ;      :org_change_date :cid
                         ;      :org_clock_cancel :<prefix>xq
                         ;      :org_clock_goto :<prefix>xj
                         ;      :org_clock_in :<prefix>xi
                         ;      :org_clock_out :<prefix>xo
                         ;      :org_cycle :<TAB>
                         :org_deadline :<localleader>dd
                         ;      :org_demote_subtree :>s
                         ;      :org_do_demote ">>"
                         ;      :org_do_promote "<<"
                         ;      :org_edit_special "<prefix>'"
                         ;      :org_export :<prefix>e
                         ;      :org_forward_heading_same_level "]]"
                         ;      :org_global_cycle :<S-TAB>
                         :org_insert_heading_respect_content :<localleader>h
                         ;      :org_insert_link :<prefix>li
                         ;      :org_insert_todo_heading :<prefix>iT
                         ;      :org_insert_todo_heading_respect_content :<prefix>it
                         ;:org_meta_return :<S-CR>
                         ;      :org_move_subtree_down :<prefix>J
                         ;      :org_move_subtree_up :<prefix>K
                         ;      :org_next_visible_heading "}"
                         ;      :org_open_at_point :<prefix>o
                         ;      :org_previous_visible_heading "{"
                         :org_priority "<localleader>pp"
                         :org_priority_down "<localleader>pd"
                         :org_priority_up "<localleader>pu"
                         ;      :org_promote_subtree :<s
                         ;      :org_refile :<prefix>r
                         ;      :org_return :<CR>
                         :org_schedule :<localleader>ds
                         ;      :org_set_effort :<prefix>xe
                         ;      :org_set_tags_command :<prefix>t
                         ;      :org_show_help :g?
                         ;      :org_store_link :<prefix>ls
                         :org_time_stamp :<localleader>dt
                         ;      :org_time_stamp_inactive :<prefix>i!
                         ;      :org_timestamp_down :<C-x>
                         ;      :org_timestamp_down_day :<S-DOWN>
                         ;      :org_timestamp_up :<C-a>
                         ;      :org_timestamp_up_day :<S-UP>
                         :org_todo :<localleader>t}}}}

;      :org_todo_prev :ciT
;      :org_toggle_archive_tag :<prefix>A
;      :org_toggle_checkbox :<C-Space>
;      :org_toggle_heading :<prefix>*
;      :org_toggle_timestamp_type :<prefix>d!
;      :outline_up_heading "g{"}
;:org_return_uses_meta_return false
;:prefix :<Leader>o
;:text_objects {:around_heading :ah
;               :around_heading_from_root :OH
;               :around_subtree :ar
;               :around_subtree_from_root :OR
;               :inner_heading :ih
;               :inner_heading_from_root :Oh
;               :inner_subtree :ir
;               :inner_subtree_from_root :Or}}}}
