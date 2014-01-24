; Cider

(require 'cider)
(setq nrepl-hide-special-buffers t
      cider-repl-pop-to-buffer-on-connect nil
      cider-popup-stacktraces nil
      cider-repl-popup-stacktraces t)

; Clojure in Org
(require 'ob-clojure)
(setq org-babel-clojure-backend 'cider)


(defun cider-eval-expression-at-point-in-repl ()
  (interactive)
  (let ((form (cider-sexp-at-point)))
    ;; Strip excess whitespace
    (while (string-match "\\`\s+\\|\n+\\'" form)
      (setq form (replace-match "" t t form)))
    (set-buffer (cider-find-or-create-repl-buffer))
    (goto-char (point-max))
    (insert form)
    (cider-repl-return)))

(add-hook 'clojure-mode-hook
	  (lambda () (local-set-key (kbd "C-`") 'cider-eval-expression-at-point-in-repl)))

(provide 'clojure)
