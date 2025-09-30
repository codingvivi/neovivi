{1 :nyoom-engineering/oxocarbon.nvim 
 :lazy false
 :config (fn [] 
           (vim.cmd.colorscheme :oxocarbon)
            
           (local color_keyword "#78a9ff")
           (local color_class "#78a9ff")
           (local color_constructor "#78a9ff")
           (local color_enum "#78a9ff")
           (local color_module "#78a9ff")
           (local color_struct "#78a9ff")
           (local color_operator "#78a9ff")

           (local color_func "#ff7eb6")

           (local color_string "#be95ff")
           (local color_enum_member "#be95ff")
           (local color_constant  "#be95ff")
            
           (local color_text  "#d0d0d0")
           (local color_var  "#d0d0d0")
           (local color_field  "#d0d0d0")
           (local color_ref  "#d0d0d0")

           (local color_porperty "#ee5296")

           (local color_warn "#f1c21b")
           (local color_error "#fa4d56")
          
;           (vim.api.nvim_set_hl 0 "FzfLuaScrollFloatEmpty"   {:fg "#d0d0d0" :bg "#262626"})
 ;          (vim.api.nvim_set_hl 0 "FzfLuaScrollFloatFull"   {:fg "#82cfff" :bg "#262626"})

           (vim.api.nvim_set_hl 0 "BlinkCmpKind"   {:fg "#262626" :bg "#78a9ff"})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindText" {:fg "#262626" :bg color_text})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindEnum" {:fg "#262626" :bg color_enum})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindKeyword" {:fg "#262626" :bg color_keyword})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindConstant" {:fg "#262626" :bg color_constant})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindConstructor" {:fg "#262626" :bg color_constructor})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindReference" {:fg "#262626" :bg color_ref})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindFunction" {:fg "#262626" :bg color_func})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindStruct" {:fg "#262626" :bg color_struct})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindClass" {:fg "#262626" :bg color_class})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindModule" {:fg "#262626" :bg color_module})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindOperator" {:fg "#262626" :bg color_operator})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindField" {:fg "#262626" :bg color_field})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindProperty" {:fg "#262626" :bg color_porperty})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindEvent" {:fg "#262626" :bg "#ff7eb6"})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindUnit" {:fg "#262626" :bg "#78a9ff"})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindSnippet" {:fg "#262626" :bg "#42be65"})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindFolder" {:fg "#262626" :bg "#be95ff"})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindVariable" {:fg "#262626" :bg color_var})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindFile" {:fg "#262626" :bg "#be95ff"})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindMethod" {:fg "#262626" :bg color_func})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindValue" {:fg "#262626" :bg "#82cfff"})
           (vim.api.nvim_set_hl 0 "BlinkCmpKindEnumMember" {:fg "#262626" :bg color_enum_member})
           ; Errors
           (vim.api.nvim_set_hl 0 "ErrorMsg" {:fg color_error})
           (vim.api.nvim_set_hl 0 "DiagnosticError" {:fg color_error})
           (vim.api.nvim_set_hl 0 "DiagnosticUnderlineError" {:fg color_error :undercurl true}) ;:cterm :undercurl})
           (vim.api.nvim_set_hl 0 "Error" {:fg color_error :bg "#262626"})
           (vim.api.nvim_set_hl 0 "@error" {:fg color_error})
           (vim.api.nvim_set_hl 0 "HealthError" {:fg color_error})
           (vim.api.nvim_set_hl 0 "StatusLineDiagnosticError" {:fg color_error :bg "#161616" :bold true})
           (vim.api.nvim_set_hl 0 "NotifyERRORBorder" {:fg color_error})
           (vim.api.nvim_set_hl 0 "NotifyERRORIcon" {:fg color_error})
           (vim.api.nvim_set_hl 0 "NotifyERRORTitle" {:fg color_error})
           ; Alerts
            
           ; Diff removes
           (vim.api.nvim_set_hl 0 "Removed" {:fg color_error})
           (vim.api.nvim_set_hl 0 "DiffRemoved" {:fg color_error})
           (vim.api.nvim_set_hl 0 "NeogitChangeDunstaged" {:fg color_error})
           (vim.api.nvim_set_hl 0 "NeogitChangeDeleted" {:fg color_error})
           (vim.api.nvim_set_hl 0 "NeogitChangeDuntracked" {:fg color_error})

           ;Warnings
           (vim.api.nvim_set_hl 0 "DiagnosticWarn" {:fg color_warn})
           (vim.api.nvim_set_hl 0 "HealthWarning" {:fg color_warn})
           (vim.api.nvim_set_hl 0 "StatusLineDiagnosticWarn" {:fg color_warn :bg "#161616" :bold true})
           (vim.api.nvim_set_hl 0 "NotifyWARNBorder" {:fg color_warn})
           (vim.api.nvim_set_hl 0 "NotifyWARNIcon" {:fg color_warn})
           (vim.api.nvim_set_hl 0 "NotifyWARNTitle" {:fg color_warn})

           ;Oks
           (vim.api.nvim_set_hl 0 "DiagnosticOk" {:fg "#42be65"})
           (vim.api.nvim_set_hl 0 "HealthSuccess" {:fg "#42be65"})

           ;Addeds
           (vim.api.nvim_set_hl 0 "Added" {:fg "#42be65"})
           (vim.api.nvim_set_hl 0 "DiffAdded" {:fg "#42be65"})
           (vim.api.nvim_set_hl 0 "NeogitChangeModified" {:fg "#42be65"})

           ;Infos
           (vim.api.nvim_set_hl 0 "DiagnosticInfo" {:fg "#33b1ff"})
           (vim.api.nvim_set_hl 0 "NotifyINFOBorder" {:fg "#33b1ff"})
           (vim.api.nvim_set_hl 0 "NotifyINFOIcon" {:fg "#33b1ff"})
           (vim.api.nvim_set_hl 0 "NotifyINFOTitle" {:fg "#33b1ff"})

           ;Changeds
           (vim.api.nvim_set_hl 0 "Changed" {:fg "#33b1ff"})
           ;(vim.api.nvim_set_hl 0 "DiffAdded" {:fg "#33b1ff"})
            
           ;Whichkey
           (vim.api.nvim_set_hl 0 "WhichKeyIconGreen" {:fg "#3ddbd9"})
           (vim.api.nvim_set_hl 0 "WhichKeyIconYellow" {:fg "#be95ff"})
           (vim.api.nvim_set_hl 0 "WhichKeyIconOrange" {:fg "#be95ff"})
           (vim.api.nvim_set_hl 0 "WhichKeyIconRed" {:fg "#ee5396"})


;            (vim.api.nvim_set_hl 0 "@org.headline.level1" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level2" {:fg "#ffdc69" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level3" {:fg "#33b0ff" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level4" {:fg "#f2f2f2" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level5" {:fg "#f2f2f2" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level6" {:fg "#33b1ff" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level7" {:fg "#08bdba" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level7" {:fg "#ee5396" :bold true :underline false})
            

           (vim.api.nvim_set_hl 0 "@org.headline.level1" {:fg "#ff7eb6" :bold true :underline false})
           (vim.api.nvim_set_hl 0 "@org.headline.level2" {:fg "#ffafd2" :bold true :underline false})
           (vim.api.nvim_set_hl 0 "@org.headline.level3" {:fg "#ffd6e8" :bold true :underline false})
           (vim.api.nvim_set_hl 0 "@org.headline.level4" {:fg "#fff0f7" :bold true :underline false})
           (vim.api.nvim_set_hl 0 "@org.headline.level5" {:fg "#fff0f7" :bold true :underline false})

;            (vim.api.nvim_set_hl 0 "@org.headline.level4" {:fg "#fff0f7" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level5" {:fg "#ffe0ef" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level6" {:fg "#ff94c3" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level7" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level8" {:fg "#e3176f" :bold true :underline false})

;            (vim.api.nvim_set_hl 0 "@org.headline.level1" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level2" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level3" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level4" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level5" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level6" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level7" {:fg "#ff7eb6" :bold true :underline false})
;            (vim.api.nvim_set_hl 0 "@org.headline.level8" {:fg "#ff7eb6" :bold true :underline false})

           (vim.api.nvim_set_hl 0 "@org.agenda.scheduled" {:fg "#08bdba"})
           (vim.api.nvim_set_hl 0 "@org.agenda.deadline" {:fg "#ff7eb6"})
           (vim.api.nvim_set_hl 0 "@org.agenda.scheduled_past" {:fg "#ee5296"})

           (vim.api.nvim_set_hl 0 "@org.priority.highest" {:fg color_error})
;            (vim.api.nvim_set_hl 0 "@org.priority.high" {:fg "#fddc69"})
           (vim.api.nvim_set_hl 0 "@org.priority.default" {:fg color_warn})
;            (vim.api.nvim_set_hl 0 "@org.priority.low" {:fg "#525252"})
           (vim.api.nvim_set_hl 0 "@org.priority.lowest" {:fg "#f2f2f2"})

           (vim.api.nvim_set_hl 0 "@markup.list" {:fg "#78a9ff"})
           (vim.api.nvim_set_hl 0 :OrgBulletsDash {:link "@markup.list"})

           (vim.api.nvim_set_hl 0 "@org.plan" {:link "Keyword"})
           (vim.api.nvim_set_hl 0 "@org.properties.name" {:link "Keyword"})
           (vim.api.nvim_set_hl 0 "@markup.link" {:link "markdownUrl"})

           (vim.api.nvim_set_hl 0 "@org.timestamp.active" {:fg "#82cfff"})

           (vim.api.nvim_set_hl 0 "@org.keyword.face.TODO" {:fg "#42be65"})
           (vim.api.nvim_set_hl 0 "@org.keyword.face.DONE" {:fg "#525252"})
           (vim.api.nvim_set_hl 0 "@org.keyword.face.IDEA" {:fg "#42be65"})
           (vim.api.nvim_set_hl 0 "@org.keyword.face.KILL" {:fg color_error})
           (vim.api.nvim_set_hl 0 "@org.keyword.face.WAITING" {:fg color_warn})

           ;(vim.api.nvim_set_hl 0 "macro" {:fg "#fddc69"}))}
           ;(vim.api.nvim_set_hl 0 "@property" {:fg "#ff7eb6"}))}



           (vim.api.nvim_set_hl 0 "@org.plan" {:link "Keyword"}))}

;base00: "#161616" # 00 - Default Background
;base01: "#282828" # 01 - Lighter Background (Used for status bars, line number and folding marks)
;base02: "#404040" # Selection Background
;base03: "#525252" # Comments, Invisibles, Line Highlighting
;base04: "#aaaaaa" # Dark Foreground (Used for status bars)
;base05: "#d0d0d0" # Default Foreground, Caret, Delimiters, Operators
;base06: "#f2f2f2" # Light Foreground (Not often used)
;base07: "#ffffff" # Light Background (Not often used)
;
;base08: "#78aaff" # 09 - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
;base09: "#82cfff" # 15 - Integers, Boolean, Constants, XML Attributes, Markup Link Url
;base0A: "#ee5296" # 10 - Classes, Markup Bold, Search Text Background
;base0B: "#be96ff" # 14 - Strings, Inherited Class, Markup Code, Diff Inserted
;base0C: "#08bdba" # 07 - Support, Regular Expressions, Escape Characters, Markup Quotes
;base0D: "#ff7eb6" # 12 - Functions, Methods, Attribute IDs, Headings
;base0E: "#33b0ff" # 11 - Keywords, Storage, Selector, Markup Italic, Diff Changed
;base0F: "#3ddbda" # 08 - Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
;base1F: "#42be65" # 13 - 
