;; Linter

(add-hook 'python-mode-hook 'flycheck-mode)

;; Debug

(defun python-add-breakpoint ()
  "Add a break point"
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent)
  (insert "import ipdb; ipdb.set_trace()")
  (highlight-lines-matching-regexp "^[ ]*import ipdb; ipdb.set_trace()"))

(require 'python)
(define-key python-mode-map (kbd "C-c C-b") 'python-add-breakpoint)

;; Ignored Python bytecode in dired
(add-to-list 'dired-omit-extensions ".pyc")


(provide 'python-dev)
