(use-package smartparens-config
  :init
  (smartparens-global-mode t)

  :config
  (progn
    ;; Highlights matching pairs
    (show-smartparens-global-mode t)

    ;; Keymaps
    (define-key evil-normal-state-map (kbd "C-l") 'sp-forward-sexp)
    (define-key evil-normal-state-map (kbd "C-h") 'sp-backward-sexp)

    (define-key evil-normal-state-map (kbd "C-j") 'sp-down-sexp)
    (define-key evil-normal-state-map (kbd "C-S-j") 'sp-backward-down-sexp)

    (define-key evil-normal-state-map (kbd "C-S-h") 'sp-beginning-of-sexp)
    (define-key evil-normal-state-map (kbd "C-S-l") 'sp-end-of-sexp)

    (define-key evil-normal-state-map (kbd "C-k") 'sp-up-sexp)
    (define-key evil-normal-state-map (kbd "C-S-k") 'sp-backward-up-sexp)

    (define-key evil-normal-state-map (kbd "C-M-l") 'sp-next-sexp)
    (define-key evil-normal-state-map (kbd "C-M-h") 'sp-previous-sexp)

    (define-key evil-normal-state-map "et" 'sp-transpose-sexp)

    (define-key evil-normal-state-map "ek" 'sp-kill-sexp)
    (define-key evil-normal-state-map "ey" 'sp-copy-sexp)

    (define-key evil-normal-state-map "eu" 'sp-unwrap-sexp)
    (define-key evil-normal-state-map "eU" 'sp-backward-unwrap-sexp)

    (define-key evil-normal-state-map "ess" 'sp-splice-sexp)
    (define-key evil-normal-state-map "esl" 'sp-splice-sexp-killing-forward)
    (define-key evil-normal-state-map "esh" 'sp-splice-sexp-killing-backward)
    (define-key evil-normal-state-map "esa" 'sp-splice-sexp-killing-around)

    (define-key evil-normal-state-map "eah" 'sp-add-to-previous-sexp)
    (define-key evil-normal-state-map "eal" 'sp-add-to-next-sexp)

    (define-key evil-normal-state-map "ej" 'sp-join-sexp)
    (define-key evil-normal-state-map "eJ" 'sp-split-sexp)))

(provide 'setup-smartparens)
