; Unclutter UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode '(4 . 0))

; Theme
(load-theme 'noctilux t)

; Cursor
(blink-cursor-mode -1)

; Line
(global-hl-line-mode)

; Inline images
(require 'iimage)
(iimage-mode)

; Quick feedback of pressed keys
(setq echo-keystrokes 0.2)

; Font
(set-face-attribute 'default nil :height 130)

; Nyan progress bar
(require 'nyan-mode)
(nyan-mode)

; Pretty mode
(require 'pretty-mode)
(global-pretty-mode t)


(provide 'appearance)
