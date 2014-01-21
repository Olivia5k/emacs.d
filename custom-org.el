(require 'org)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (python . t)
   (sh . t) 
   (clojure . t)
   (haskell . t)
  ))

(setq org-todo-keywords '((sequence "TODO(t)" "|" "DONE(d)" "WAITING(w)"))
      org-enforce-todo-dependencies t
      org-src-fontify-natively t
      org-confirm-babel-evaluate nil)

(provide 'custom-org)
