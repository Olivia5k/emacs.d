(setq inferior-lisp-program "clisp")

(if (file-exists-p "~/.emacs.d/HyperSpec")
  (setq common-lisp-hyperspec-root "file://~/.emacs.d/HyperSpec/"))


(provide 'clisp)
