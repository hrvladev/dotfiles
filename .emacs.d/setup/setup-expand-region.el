(use-package expand-region
  :config
  (progn
    ;; Keymaps
    (define-key evil-normal-state-map (kbd "M-e") 'er/expand-region)
    (define-key evil-normal-state-map (kbd "M-E") 'er/contract-region)))

(provide 'setup-expand-region)
