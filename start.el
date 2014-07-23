(require 'animate)

(defun say-hello ()
  ;; Make a suitable buffer to display the birthday present in.
  (switch-to-buffer (get-buffer-create "*Hello*"))
  (erase-buffer)
  ;; Display the empty buffer.
  (sit-for 0)

  (animate-string "Hello!" 6)
  (sit-for 1)

;  (animate-string "You are my sunshine," 10 30)
;  (sit-for .5)
;  (animate-string "My only sunshine." 11 30)
;  (sit-for .5)
;  (animate-string "I'm awful sad that" 12 30)
;  (sit-for .5)
;  (animate-string "You've moved away." 13 30)
;  (sit-for .5)
;  (animate-string "Let's talk together" 15 30)
;  (sit-for .5)
;  (animate-string "And love more deeply." 16 30)
;  (sit-for .5)
;  (animate-string "Please bring back" 17 30)
;  (animate-string "my sunshine" 18 34)
;  (animate-string "to stay!" 19 34)
)

(say-hello)

(provide 'start)
