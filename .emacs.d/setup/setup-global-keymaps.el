;; Misc
(define-key evil-normal-state-map " l" 'recenter-top-bottom)

;; Autocompletion
(global-set-key (kbd "M-/") 'hippie-expand)

;; Buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)
(define-key evil-normal-state-map " B" 'ibuffer)
(define-key evil-normal-state-map " b" 'ido-switch-buffer)
(define-key evil-normal-state-map " s" 'save-buffer)
(define-key evil-normal-state-map " \t" 'evil-buffer)

;; Files
(define-key evil-normal-state-map " o" 'ido-find-file)

;; Text navigation
(define-key evil-normal-state-map "H" 'evil-first-non-blank)
(define-key evil-normal-state-map "L" 'evil-last-non-blank)

;;; Esc quits
(global-set-key [escape] 'keyboard-quit)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

(provide 'setup-global-keymaps)
