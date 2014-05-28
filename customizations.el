(setq make-backup-files nil
      tab-width 4
      fill-column 80
      vc-follow-symlinks t
      ispell-program-name "aspell")

(setenv "PAGER" "/usr/bin/cat")

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'w3m)
(setq browse-url-browser-function 'w3m-goto-url-new-session
      w3m-default-display-inline-images t)

(defun browse-subreddit (subreddit)
  (browse-url (concat "https://reddit.com/r/" subreddit)))

(defun reddit-clj ()
  (interactive)
  (browse-subreddit "clojure"))

(defun reddit-emacs ()
  (interactive)
  (browse-subreddit "emacs"))

(require 'ag)
(setq ag-reuse-buffers 't)

(require 'smex)
(global-set-key (kbd "C-t") 'smex)

; Resize windows
(global-set-key (kbd "C-x M-h") (lambda ()
                                  (interactive)
                                  (enlarge-window-horizontally 10)))
(global-set-key (kbd "C-x M-l") (lambda ()
                                  (interactive)
                                  (enlarge-window-horizontally -10)))
(global-set-key (kbd "C-x M-j") (lambda ()
                                  (interactive)
                                  (enlarge-window 10)))
(global-set-key (kbd "C-x M-k") (lambda ()
                                  (interactive)
                                  (enlarge-window -10)))


(provide 'customizations)
