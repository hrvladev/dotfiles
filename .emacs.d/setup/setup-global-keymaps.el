;; Use hippie-expand instead of dabbrev
(global-set-key (kbd "M-/") 'hippie-expand)

;; Replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(define-key evil-normal-state-map " B" 'ibuffer)

;; Switch to another buffer
(define-key evil-normal-state-map " b" 'ido-switch-buffer)

;; Save buffer/s
(define-key evil-normal-state-map " s" 'save-buffer)
(define-key evil-normal-state-map " S" 'save-some-buffers)

(provide 'setup-global-keymaps)
