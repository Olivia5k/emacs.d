;; ERC
(require 'erc)
(add-to-list 'erc-modules 'notifications)

(setq erc-autojoin-channels-alist '(("freenode.net" "#emacs")))

(provide 'social)
