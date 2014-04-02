;; ERC
(require 'erc)
(add-to-list 'erc-modules 'notifications)

(setq erc-autojoin-channels-alist '(("freenode.net" "#kaleidos-gr14")))

(provide 'social)
