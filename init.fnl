;(require :config.globals)
;(require :config.lazy)
;;(require :config.autocmds)

;; ~/.config/nvim/init.fnl
(fn ensure-installed [plugin branch]
  (let [(user repo) (string.match plugin "(.+)/(.+)")
        repo-path (.. (vim.fn.stdpath :data) :/lazy/ repo)]
    (when (not ((. (or vim.uv vim.loop) :fs_stat) repo-path))
      (vim.notify (.. "Installing " plugin " " branch))
      (local repo-url (.. "https://github.com/" plugin :.git))
      (local out (vim.fn.system [:git
                                 :clone
                                 "--filter=blob:none"
                                 (.. :--branch= branch)
                                 repo-url
                                 repo-path]))
      (when (not= vim.v.shell_error 0)
        (vim.api.nvim_echo [[(.. "Failed to clone " plugin ":\n") :ErrorMsg]
                            [out :WarningMsg]
                            ["\nPress any key to exit..."]]
                           true {})
        (vim.fn.getchar)
        (os.exit 1)))
    repo-path))

(local lazy-path (ensure-installed :folke/lazy.nvim :stable))
(local hotpot-path (ensure-installed :rktjmp/hotpot.nvim :v0.14.8))
(vim.opt.runtimepath:prepend [hotpot-path lazy-path])
(vim.loader.enable)
(vim.opt.runtimepath:append "~/.local/share/nvim/lazy/hibiscus.nvim/fnl/")
(let [hotpot (require :hotpot)
      setup hotpot.setup
      build hotpot.api.make.build
      uv vim.loop]
  ;; do some configuration stuff
  (setup {:compiler {:modules {:correlate true}
                     :macros {:env :_COMPILER
                              :compilerEnv _G
                              :allowedGlobals false}}})

  (fn rebuild-on-save [{: buf}]
    (let [{: build} (require :hotpot.api.make)
          au-config {:buffer buf
                     :callback #(build (vim.fn.stdpath :config)
                                       {:verbose true
                                        :atomic true
                                        ;; Enforce hard errors when unknown symbols are encountered.
                                        :compiler {:modules {:allowedGlobals (icollect [n _ (pairs _G)]
                                                                               n)}}}
                                       [["init.fnl" true]])}]
      (vim.api.nvim_create_autocmd :BufWritePost au-config)))

  ;; watch file opens, attach builder if we open the config
  (vim.api.nvim_create_autocmd :BufRead
                               {:pattern (-> (.. (vim.fn.stdpath :config)
                                                 :/init.fnl)
                                             ;; call realpath if you have some symlink setup
                                             ;; (vim.loop.fs_realpath)
                                             (vim.fs.normalize))
                                :callback rebuild-on-save}))

(set vim.g.mapleader " ")

; Yes lazy, i will set them before running your setup
(set vim.g.maplocalleader " m")

((. (require :lazy) :setup) {:performance {:rtp {:paths [(.. (vim.fn.stdpath :config)
                                                             "/.compiled")]}}
                             :spec [{1 "rktjmp/hotpot.nvim"
                                     :opts {:compiler {:macros {:allowedGlobals ["vim"]}}}}
                                    {:import :plugins}]})

;(require :config.globals)

(require :config.keymaps)
(require :config.options)
(require :config.lsp)
(require :config.neovide)
