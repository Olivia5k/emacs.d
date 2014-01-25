; Theme
(load-theme 'cyberpunk t)

; Unclutter UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

; Cursor
(blink-cursor-mode -1)

; Line
(global-hl-line-mode)

; Font
(set-face-attribute 'default nil :height 110)

; Nyan progress bar
(require 'nyan-mode)
(nyan-mode)

; Pretty mode
(require 'pretty-mode)
(global-pretty-mode t)


(provide 'appearance)
