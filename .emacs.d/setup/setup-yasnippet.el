(use-package yasnippet
  :init
  (progn
    ;; Use only own snippets (do not use bundled ones)
    (setq yas-snippet-dirs "~/.emacs.d/snippets")

    ;; Enable Yas minor mode in all buffers
    (yas-global-mode 1)))

(provide 'setup-yasnippet)
