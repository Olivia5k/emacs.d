; Cider

(require 'cider)
(setq nrepl-hide-special-buffers t
      cider-repl-pop-to-buffer-on-connect nil
      cider-popup-stacktraces nil
      cider-repl-popup-stacktraces t)

; Clojure in Org
(require 'ob-clojure)
(setq org-babel-clojure-backend 'cider)

(provide 'clojure)
