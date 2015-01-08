;; IRC
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
      '(("irc.kaleidos.net" "#gr14")
        ("irc.freenode.net" "#clojure" "#clojurescript" "#lisp" "#emacs-es")))

;; Twitter
(require 'twittering-mode)
(setq twittering-icon-mode t
      twittering-use-icon-storage t)


(provide 'social)
