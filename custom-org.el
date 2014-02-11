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

;; Customizations
(setq org-todo-keywords '((sequence "TODO(t)" "INPROGRESS(i)" "WAIT(w)" "|" "DONE(d)" "MAYBE(m)"))
      org-enforce-todo-dependencies t
      org-src-fontify-natively t
      org-confirm-babel-evaluate nil
      org-return-follows-link t)

;; Aesthetics 
(require 'load-theme-buffer-local)
(add-hook 'org-mode-hook (lambda ()
			   (load-theme-buffer-local 'leuven (current-buffer) t)))

(setq org-src-fontify-natively t)

;; Notes
(setq org-default-notes-file (concat org-directory "/notes.org"))
(global-set-key (kbd "C-c c") 'org-capture)

;; HTML Export
(setq org-html-html5-fancy t)
(setq org-html-doctype "html5")
(setq org-html-use-infojs nil)
(setq org-html-allow-name-attribute-in-anchors nil)
(setq org-html-htmlize-output-type 'css)
(setq org-html-htmlize-font-prefix "htmlized-")
(setq org-html-text-markup-alist
      '((bold           . "<strong>%s</strong>")
        (italic         . "<em>%s</em>")
        (code           . "<code>%s</code>")
        (strike-through . "<span style=\"strike\">%s</span>")
        (underline      . "<span class=\"underline\">%s</span>")
        (verbatim       . "<code>%s</code>")))


(provide 'custom-org)
