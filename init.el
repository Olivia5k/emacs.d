; Packages
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(setq global-auto-complete-mode t)

; Aliases

(defalias 'yes-or-no-p 'y-or-n-p)

; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'ujelly t)

; Buffers

(setq global-auto-revert-mode t)

; UI

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(nyan-mode)

(blink-cursor-mode -1)

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

;(evil-mode t)
(global-evil-leader-mode t)
(global-set-key "\C-c e" 'evil-mode)

; Dired

(add-hook 'dired-load-hook (function (lambda () (load "dired-x")))

; Lisps

(global-rainbow-delimiters-mode)

(require 'paren)
(setq show-paren-style 'parenthesis)

(show-paren-mode 1)

; Org-mode
(require 'org-install)

(setq org-todo-keywords '((sequence "TODO(t)" "|" "DONE(d)" "WAITING(w)"))
      org-enforce-todo-dependencies t
      org-src-fontify-natively t
      org-confirm-babel-evaluate nil)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (python . t)
   (sh . t) 
  ))
