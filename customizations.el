(setq make-backup-files nil
      tab-width 4
      fill-column 80
      vc-follow-symlinks t
      ispell-program-name "aspell")

(setenv "PAGER" "/usr/bin/cat")

(defalias 'yes-or-no-p 'y-or-n-p)

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
