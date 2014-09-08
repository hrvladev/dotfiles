(defun cleanup-buffer ()
  "Deals with trailing whitespace, indentation and stuff."
  (interactive)

  (untabify (point-min) (point-max))
  (whitespace-cleanup))

(provide 'setup-functions)
