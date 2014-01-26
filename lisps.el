(require 'paren)
(require 'rainbow-delimiters)

(defvar mode-hooks '(clojure-mode-hook
		     emacs-lisp-mode-hook
		     lisp-mode-hook))

(dolist (mode-hook mode-hooks)
  (add-hook mode-hook (lambda ()
			(rainbow-delimiters-mode)
			(paredit-mode)
			(show-paren-mode))))

(provide 'lisps)