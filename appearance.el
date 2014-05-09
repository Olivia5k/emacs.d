(add-to-list 'load-path "~/.emacs.d/themes/")

;; Unclutter UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode '(4 . 0))

;; Theme
(load-theme 'cyberpunk t)

;; Cursor
(blink-cursor-mode -1)

;; Line
(global-hl-line-mode)

;; Quick feedback of pressed keys
(setq echo-keystrokes 0.2)

;; Font
(set-face-attribute 'default nil :height 130)

;; Useful indicators
(setq display-time-24hr-format t
      display-time-mail-file "/home/dialelo/.mail/fastmail/INBOX")
(display-time-mode)
(display-battery-mode)

;; Nyan progress bar
(require 'nyan-mode)
(nyan-mode)

;; Pretty mode
(require 'pretty-mode)
(global-pretty-mode t)

;; http://www.masteringemacs.org/articles/2012/09/10/hiding-replacing-modeline-strings/
(defvar mode-line-cleaner-alist
  `((paredit-mode . " ()")
    (eldoc-mode . "")
    (abbrev-mode . "")
    (undo-tree-mode " ⎌")
    ;; Major modes
    (help-mode . "？")
    (fundamental-mode . "∅")
    (lisp-interaction-mode . "λ")
    (python-mode . "py")
    (cider-mode . "clj")
    (emacs-lisp-mode . "EL")
    (mu4e-headers-mode . "✉")))

(defun clean-mode-line ()
  (interactive)
  (loop for cleaner in mode-line-cleaner-alist
        do (let* ((mode (car cleaner))
                 (mode-str (cdr cleaner))
                 (old-mode-str (cdr (assq mode minor-mode-alist))))
             (when old-mode-str
                 (setcar old-mode-str mode-str))
               ;; major mode
             (when (eq mode major-mode)
               (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)

(provide 'appearance)
