(use-package ace-jump-mode
  :config
  (progn
    ;; Keymaps
    (define-key evil-motion-state-map "f" 'ace-jump-char-mode)
    (define-key evil-motion-state-map "F" 'ace-jump-word-mode)
    (define-key evil-motion-state-map "," 'ace-jump-line-mode)))

(provide 'setup-ace-jump-mode)
