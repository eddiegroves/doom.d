(setq user-full-name "Eddie Groves"
      user-mail-address "eddiegroves@gmail.com")

(setq doom-font (font-spec :family "Hack Nerd Font" :size 18 :weight 'semi-light))

(setq doom-theme 'doom-dracula)

(setq display-line-numbers-type nil)

(defvar --backup-directory (concat user-emacs-directory "backups"))
(if (not (file-exists-p --backup-directory))
    (make-directory --backup-directory t))
(setq backup-directory-alist `(("." . ,--backup-directory)))
(setq make-backup-files t       ; backup of a file the first time it is saved.
      backup-by-copying t       ; don't clobber symlinks
      version-control t         ; version numbers for backup files
      delete-old-versions t     ; delete excess backup files silently
      delete-by-moving-to-trash t
      kept-old-versions 6       ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9       ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t       ; auto-save every buffer that visits a file
      auto-save-timeout 20      ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200    ; number of keystrokes between auto-saves (default: 300)
      )

(add-hook 'window-setup-hook #'toggle-frame-maximized)

(add-hook 'org-mode-hook 'turn-on-flyspell)

(add-hook 'org-mode-hook (lambda ()
                              (visual-line-mode -1)))

(setq org-ellipsis " ▼ ")

(add-hook 'org-mode-hook 'turn-on-auto-fill)

(setq org-hide-block-startup t)
(setq org-startup-folded t)

(setq org-attach-auto-tag nil)

(setq org-src-preserve-indentation nil
      org-edit-src-content-indentation 0)
