; Read changes from disk automatically 
(global-auto-revert-mode t)

; Line and column numbers in margin
(global-linum-mode)

; Line, column and file size in minibuffer
;(line-number-mode nil)
;(column-number-mode nil)
;(size-indication-mode nil)

; Evil
(require 'evil)
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
(global-set-key (kbd "C-c e") 'evil-mode)

; Increase/Decrease font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)


(provide 'editor)
