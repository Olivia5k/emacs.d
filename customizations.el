(setq inhibit-startup-screen t
      initial-scratch-message nil
      make-backup-files nil
      user-full-name "Alejandro Gómez"
      user-email-address "alejandro@dialelo.com"
      query-user-email-address nil
      tab-width 4
      fill-column 80
      vc-follow-symlinks t
      ispell-program-name "aspell")

(setenv "PAGER" "/usr/bin/cat")

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'w3m)
(setq browse-url-browser-function 'w3m-goto-url-new-session)

(defun browse-subreddit (subreddit)
  (browse-url (string "https://reddit.com/r/" subreddit)))

(defun reddit-clj ()
  (interactive)
  (browse-subreddit "clojure"))

(defun reddit-emacs ()
  (interactive)
  (browse-subreddit "emacs"))

(require 'ag)
(setq ag-reuse-buffers 't)

(provide 'customizations)
