;; Autocompletion
(global-set-key (kbd "M-/") 'hippie-expand)

;; Buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)
(define-key evil-normal-state-map " B" 'ibuffer)
(define-key evil-normal-state-map " b" 'ido-switch-buffer)
(define-key evil-normal-state-map " s" 'save-buffer)
(define-key evil-normal-state-map " \t" 'switch-to-most-recently-visited-buffer)

(provide 'setup-global-keymaps)
