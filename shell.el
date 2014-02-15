(require 'multi-term)

(add-hook 'term-mode-hook 
  (lambda ()         
    (local-set-key (kbd "M-v") 'term-paste)))

(provide 'shell)
