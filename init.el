; Packages
(require 'package)

(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-refresh-contents)

(defvar my-packages '(evil
                      evil-leader
                      magit
                      nyan-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Extras
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

; Theme
(load-theme 'ujelly t)

; UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(nyan-mode)

(blink-cursor-mode -1)

; Settings
(defalias 'yes-or-no-p 'y-or-n-p)

(setenv "PAGER" "/usr/bin/cat")

; Better file and buffer search
(ido-mode 1)

(setq inhibit-startup-screen t
      initial-scratch-message nil
      make-backup-files nil
      user-full-name "Alejandro Gómez"
      user-email-address "alejandro@dialelo.com"
      query-user-email-address nil
      tab-width 4
      fill-column 80
      vc-follow-symlinks t
      ispell-program-name "aspell")

; Line and column numbers in margin
(linum-mode)
; Line, column and file size in minibuffer
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

; Increase/Decrease font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)



; Highlight current line
(global-hl-line-mode +1)

; Highlight matching parentheses
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode 1)

; Evil
(setq evil-leader/leader "SPC")
(setq-default evil-shift-with 4)

(evil-leader/set-key
  "w" 'save-buffer
  "b" 'ido-switch-buffer
  "B" 'ido-switch-buffer-other-window
  "n" 'dired
  "f" 'ido-find-file
  "g" 'magit-status
  "k" 'kill-this-buffer
  "q" 'kill-buffer-and-window
  "l" 'linum-mode)

(evil-mode t)
(global-evil-leader-mode t)

; Org-mode
(setq org-todo-keywords '((sequence "TODO(t)" "|" "DONE(d)" "WAITING(w)"))
	  org-enforce-todo-dependencies t)
