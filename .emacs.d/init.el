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
                   setup-global-keybindings

                   setup-evil
                   setup-ace-jump-mode))
  (require package))
