; Theme
(load-theme 'ujelly t)

; Unclutter UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

; Cursor
(blink-cursor-mode -1)

; Font
(set-face-attribute 'default nil :height 110)

; Nyan progress bar
(require 'nyan-mode)
(nyan-mode)

; Pretty mode
(require 'pretty-mode)
(global-pretty-mode t)


(provide 'appearance)
