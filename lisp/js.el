(defun js-add-breakpoint ()
  "Add a break point"
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent)
  (insert "debugger")
  (highlight-lines-matching-regexp "^[ ]*debugger"))

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Tern
(add-hook 'js2-mode-hook (lambda () (tern-mode)))
(eval-after-load 'tern
                 '(progn
                    (require 'tern-auto-complete)
                    (tern-ac-setup)))


(require 'coffee-mode)
(setq coffee-tab-width 4)

(define-key js2-mode-map (kbd "C-c C-b") 'js-add-breakpoint)
(define-key coffee-mode-map (kbd "C-c C-b") 'js-add-breakpoint)

(provide 'js)
