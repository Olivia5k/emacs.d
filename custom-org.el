(require 'org)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (python . t)
   (sh . t)
   (clojure . t)
   (haskell . t)
   (ruby . t)
  ))

;; TODO keywords
(setq org-todo-keywords
      '((sequence "TODO(t)" "INPROGRESS(i)" "WAIT(w)" "|" "DONE(d)" "MAYBE(m)")))

;; Customizations
(setq org-enforce-todo-dependencies t
      org-src-fontify-natively t
      org-confirm-babel-evaluate nil
      org-return-follows-link t)

;; Aesthetics
(setq org-src-fontify-natively t)

;; Inbox
(setq org-default-notes-file (concat org-directory "/inbox.org"))
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

;; Hooks
(add-hook 'org-mode-hook (lambda ()
                           (set-fill-column 120)))


(provide 'custom-org)
