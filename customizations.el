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


(provide 'customizations)
