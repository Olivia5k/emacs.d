(require 'paren)
(require 'rainbow-delimiters)

(defvar mode-hooks '(clojure-mode-hook
		     emacs-lisp-mode-hook
		     scheme-mode-hook
		     lisp-mode-hook))

(dolist (mode-hook mode-hooks)
  (add-hook mode-hook (lambda ()
			(rainbow-delimiters-mode)
                        (electric-pair-mode t)
			(show-paren-mode)
			(setq show-paren-style 'expression))))


(provide 'lisps)
