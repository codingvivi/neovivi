;;(local {: require-and : file-exists?} (require :functions))
;; Setup package manager
(require-macros :hibiscus.vim)


(let [lazypath (.. (vim.fn.stdpath :data) :/lazy/lazy.nvim)]
  (when (not (vim.loop.fs_stat lazypath))
    (vim.fn.system [:git
                    :clone
                    "--filter=blob:none"
                    :--single-branch
                    "https://github.com/folke/lazy.nvim.git"
                    lazypath]))
  (vim.opt.runtimepath:prepend lazypath))

(local lazy (require :lazy))

(lazy.setup [
             :udayvir-singh/hibiscus.nvim    ;; so lazy manages Hibiscus
             {:import :plugins}])

