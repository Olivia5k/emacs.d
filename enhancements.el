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

(provide 'enhancements)
