(use-package clojure-mode
  :config
  (progn
    (define-clojure-indent
      (defroutes 'defun)
      (GET 2)
      (POST 2)
      (PUT 2)
      (DELETE 2)
      (HEAD 2)
      (ANY 2)
      (context 2)

      (match 1)
      (are 2)

      (select 1)
      (insert 1)
      (update 1)
      (delete 1))

    (use-package cider
      :config
      (progn
        (setq nrepl-hide-special-buffers t
              nrepl-buffer-name-separator "@"
              cider-repl-display-in-current-window t
              cider-repl-use-clojure-font-lock t)

        (defun eval-and-insert-result ()
          (interactive)

          (cider-eval-last-sexp t)
          (insert " ; => "))

        (evil-declare-key 'normal clojure-mode-map
                         ";c" 'cider-jack-in
                         ";C" 'cider-connect

                         ";i" 'eval-and-insert-result

                         ";;" 'cider-eval-last-sexp
                         ";:" 'cider-eval-defun-at-point

                         ";p" 'cider-pprint-eval-last-sexp
                         ";P" 'cider-pprint-eval-defun-at-point

                         ";m" 'cider-macroexpand-1
                         ";M" 'cider-macroexpand-all

                         ";d" 'cider-doc
                         ";s" 'cider-src

                         ";j" 'cider-jump
                         ";J" 'cider-jump-back

                         ";n" 'cider-eval-ns-form
                         ";N" 'cider-repl-set-ns

                         ";b" 'cider-load-current-buffer
                         ";f" 'cider-load-file

                         ";t" 'clojure-jump-between-tests-and-code
                         ";," 'clojure-test-run-tests

                         ";r" 'cider-eval-region
                         ";z" 'cider-switch-to-repl-buffer
                         ";Q" 'cider-quit)

        (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
        (add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
        (add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)))))

(provide 'setup-clojure-mode)
