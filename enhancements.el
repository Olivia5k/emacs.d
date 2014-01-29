; Better M-x
(require 'smex)
(global-set-key (kbd "M-x") (lambda ()
			      (interactive)
			      (or (boundp 'smex-cache)
				 (smex-initialize))
			      (global-set-key (kbd "M-x") 'smex)
			      (smex)))

(global-set-key (kbd "M-X") (lambda ()
			      (interactive)
			      (or (boundp 'smex-cache)
				 (smex-initialize))
			      (global-set-key (kbd "M-X") 'smex-major-mode-commands)
			      (smex-major-mode-commands)))

; Ido
(require 'ido)
(require 'ido-ubiquitous)
(require 'ido-vertical-mode)
(ido-mode)
(ido-everywhere)
(ido-ubiquitous-mode)
(ido-vertical-mode)
;(ido-at-point-mode)

; Fuzzy matching
(setq ido-enable-flex-matching t)

; Buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

; Speedbar
(eval-after-load 'sr-speedbar
  '(progn
     (setq speedbar-show-unknown-files t
           speedbar-smart-directory-expand-flag t
           speedbar-directory-button-trim-method 'trim
           speedbar-indentation-width 2
           speedbar-user-imenu-flat t
           speedbar-use-images nil
           sr-speedbar-width 40
           sr-speedbar-width-x 40
           sr-speedbar-auto-refresh nil
           sr-speedbar-skip-other-window-p t
           sr-speedbar-right-side nil)))

(global-set-key (kbd "C-c C-t") 'sr-speedbar-toggle)


(provide 'enhancements)
