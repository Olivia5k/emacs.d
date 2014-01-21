(setq dotemacs-dir
  (file-name-directory (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotemacs-dir)

(require 'packages)
(require 'appearance)
(require 'autocompletion)
(require 'editor)
(require 'enhancements)
(require 'customizations)
(require 'hooks)

(require 'custom-org)

(require 'lisps)
(require 'clojure)
(require 'clisp)
