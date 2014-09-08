(use-package coffee-mode
  :config
  (progn
    (setq coffee-tab-width 2)

    (evil-define-key 'insert coffee-mode-map
                     (kbd "C-j") 'coffee-newline-and-indent)))

(provide 'setup-coffee-mode)
