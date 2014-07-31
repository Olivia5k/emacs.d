; IRC
(require 'erc)
(require 'erc-hl-nicks)
(require 'erc-image)

(add-to-list 'erc-modules 'notifications)

(setq erc-interpret-mirc-color t)

(setq erc-autojoin-channels-alist
      '(("irc.kaleidos.net" "#kaleidos" "#gr14" "#emacsens")
        ("irc.freenode.net" "#emacs" "#emacs-es")))


(provide 'social)
