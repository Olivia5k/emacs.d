; IRC
(require 'erc)
(require 'erc-hl-nicks)
(erc-hl-nicks-enable)
(require 'erc-image)
(erc-image-enable)
(require 'erc-colorize)
(erc-colorize-enable)

(add-to-list 'erc-modules 'notifications)

(setq erc-interpret-mirc-color t)

(setq erc-autojoin-channels-alist
      '(("irc.kaleidos.net" "#kaleidos" "#gr14" "#emacsens")
        ("irc.freenode.net" "#clojure" "#clojurescript" "#lisp" "#emacs-es")))


(provide 'social)
