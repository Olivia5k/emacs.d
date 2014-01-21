

; Better M-x
(require 'smex)
(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))

(global-set-key [(shift meta x)] (lambda ()
                                   (interactive)
                                   (or (boundp 'smex-cache)
                                       (smex-initialize))
                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                                   (smex-major-mode-commands)))

; Ido
(require 'ido)
(require 'ido-ubiquitous)
(require 'ido-vertical-mode)
(ido-mode t)
(ido-everywhere t)
(ido-vertical-mode t)

(provide 'enhancements)
