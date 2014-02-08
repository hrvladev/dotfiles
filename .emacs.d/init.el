;; Load path configuration
(dolist (path '("~/.emacs.d/"
                "~/.emacs.d/setup"))
  (add-to-list 'load-path path))

;; Require all setup packages
(dolist (package '(setup-packages
                   setup-configuration-tools
                   setup-functions
                   setup-appearance
                   setup-editor
                   setup-evil
                   setup-global-keymaps

                   setup-undo-tree
                   setup-ace-jump-mode
                   setup-ido
                   setup-yasnippet
                   setup-smex
                   setup-expand-region
                   setup-markdown-mode
                   setup-smartparens))
  (require package))
