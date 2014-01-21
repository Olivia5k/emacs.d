; Dired
(add-hook 'dired-load-hook (function (lambda () (load "dired-x"))))

(provide 'hooks)
