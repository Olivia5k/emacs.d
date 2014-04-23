;; ERC
(require 'erc)
(add-to-list 'erc-modules 'notifications)

(setq erc-autojoin-channels-alist '(("irc.kaleidos.net" "#kaleidos" "#gr14" "#emacsens"))
      erc-interpret-mirc-color t)

(provide 'social)
