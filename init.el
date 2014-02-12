(setq dotemacs-dir
  (file-name-directory (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotemacs-dir)

(require 'packages)
(require 'appearance)
(require 'autocompletion)
(require 'editor)
(require 'shell)
(require 'mail)
(require 'enhancements)
(require 'customizations)
(require 'hooks)

(require 'custom-org)

(require 'lisps)
(require 'clojure)
(require 'clisp)
(require 'python-dev)
(require 'html)

(require 'social)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("9a217ee1dcefd5e83f78381c61e25e9c4d25c7b80bf032f44d7d62ca68c6a384" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
