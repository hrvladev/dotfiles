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
      (delete 1))))

(provide 'setup-clojure-mode)
