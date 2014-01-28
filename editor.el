; Read changes from disk automatically 
(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose t)

; Line and column numbers in margin when programming
(add-hook 'prog-mode-hook (lambda () (linum-mode t)))

; Line, column and file size in minibuffer
;(line-number-mode nil)
;(column-number-mode nil)
;(size-indication-mode nil)

; Override regions when writing text
(delete-selection-mode)

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

; C-w for deleting a word backwards
(global-set-key (kbd "C-w") 'evil-delete-backward-word)

; Increase/Decrease font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)


(provide 'editor)
