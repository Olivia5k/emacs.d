; Clojure in Org
(require 'ob-clojure)
(setq org-babel-clojure-backend 'cider)

; Cider
(require 'cider)
(setq nrepl-hide-special-buffers t
      cider-repl-pop-to-buffer-on-connect nil
      cider-popup-stacktraces nil
      cider-repl-popup-stacktraces t)

; Clojure mode hooks
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

(define-key cider-mode-map (kbd "C-`") 'cider-eval-expression-at-point-in-repl)


(require 'elein)
(require 'clojure-mode)
(define-key clojure-mode-map (kbd "C-x t") 'elein-test)

; Cider mode hooks
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

; Cider REPL hooks
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(provide 'clojure)
