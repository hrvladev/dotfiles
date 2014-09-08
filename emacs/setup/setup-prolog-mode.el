(use-package prolog
  :config
  (progn
    (setq prolog-system 'swi)
    (add-to-list 'auto-mode-alist '("\\.pl\\'" . prolog-mode))

    (evil-define-key 'normal prolog-mode-map
                     ";r" 'run-prolog
                     ";c" 'prolog-compile-buffer)))

(provide 'setup-prolog-mode)
