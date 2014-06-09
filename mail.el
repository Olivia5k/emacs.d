(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
(require 'mu4e)

;; TODO: filters: kaleidos, gr14, gr14-team
;; TODO: notifications
;; TODO: automatic pgp message decryption
;; TODO: Quoting dates format

;; Customizations
(setq mu4e-confirm-quit nil)

;; Appearance
(setq mu4e-use-fancy-chars t)
(setq mu4e-headers-fields
  '((:human-date  . 10)
    (:flags . 5)
    (:from  . 28)
    (:to    . 28)
    (:subject . nil)))

;; Inline images
(setq mu4e-view-show-images t)
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

 ;; Maildir
(setq mu4e-maildir "~/.mail/fastmail")

;; Special folders
(setq mu4e-drafts-folder "/Drafts")
(setq mu4e-sent-folder   "/Sent Items")
(setq mu4e-trash-folder  "/Trash")
(setq mu4e-refile-folder "/Archive")

;; Folder shortcuts
(setq mu4e-maildir-shortcuts
  '(("/INBOX" . ?i)
    ("/Kaleidos" . ?k)
    ("/GR14" . ?g)
    ("/Clojure" . ?c)
    ("/Meetups" . ?m)))

;; Mail retrieval
(setq
 mu4e-get-mail-command "offlineimap"
 mu4e-sent-messages-behavior 'delete
 mu4e-update-interval 120)

;; Accounts
(setq
 user-mail-address "alejandro@dialelo.com"
 mu4e-user-mail-address-list (list
                               "alejandro@dialelo.com"
                               "alejandro.gomez@kaleidos.net"
                               "alejandrogomez@fastmail.fm"
                               "alejandroogomez@gmail.com")
 user-full-name "Alejandro Gómez"
 mu4e-compose-signature "Alejandro"
 mu4e-compose-complete-only-personal t)

(defconst *mail-personal* "alejandro@dialelo.com")
(defconst *mu4e-compose-signature-personal* "Alejandro")

(defconst *mail-work* "alejandro.gomez@kaleidos.net")
(defconst *mail-work-regex* "@kaleidos\.net")
(defconst *mu4e-compose-signature-work*
  (concat  "Alejandro Gómez\n"
           "Developer\n"
           "alejandro.gomez@kaleidos.net | Tel.: (+34) 91 356 29 95 \n"
           "http://kaleidos.net/B6DA55"))

(add-hook 'mu4e-compose-pre-hook
  (defun my-set-from-address ()
    "Set the From address based on the To address of the original."
    (let ((msg mu4e-compose-parent-message))
      (when msg
       (cond
        ((or  (mu4e-message-contact-field-matches msg :to *mail-work-regex*)
             (mu4e-message-contact-field-matches msg :cc *mail-work-regex*))
          (setq user-mail-address *mail-work*
                mu4e-compose-signature *mu4e-compose-signature-work*))
        (:else
          (setq user-mail-address *mail-personal*
                mu4e-compose-signature *mu4e-compose-signature-personal*)))))))

(require 'ispell)
(add-hook 'mu4e-compose-mode-hook (lambda ()
                                    (set-fill-column 80)
                                    (ispell-message)))

;; SMTP
(setq
  message-send-mail-function 'message-send-mail-with-sendmail
  sendmail-program "/usr/bin/msmtp")

(setq
  message-kill-buffer-on-exit t)

;; HTML mails
(add-to-list 'mu4e-view-actions
  '("browse mail" . mu4e-action-view-in-browser) t)

(provide 'mail)
