;; load custom https://stackoverflow.com/a/5058752/4499942
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; set server-socket-dir https://emacs.stackexchange.com/a/35952
;; not work on my CentOS 8 machine
;; (setq server-socket-dir
;;       (format "%s/emacs%d" (or (getenv "TMPDIR") "/tmp") (user-uid)))

;; (or (file-exists-p server-socket-dir)
;;     (make-directory server-socket-dir))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; add the lisp dir to load-path
;; load-path contains dirs serched by "require"
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; add to info path
;; (add-to-list 'Info-directory-list "~/../../usr/share/info")
;; (setq package-check-signature nil)

;; load my init files
(require 'better-defaults)
(require 'init-font)
(require 'init-local) ;; this file vary site by site
(require 'init-elpa)
(require 'init-projectile)
(require 'init-company)
(require 'init-flycheck)
(require 'init-python)
(require 'init-jq)
(require 'init-minor-modes)
(require 'init-csharp)
(require 'jq-lib)
(require 'init-ivy)
(require 'init-lsp)

;; packages to explore:
;; wgrep, diminish, scratch, command-log-mode
;; origami -> for text folding

;; org-babel, need this to eval code blocks in org-mode
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

;; org-agenda
(setq org-agenda-files '("~/tasks/change.org"))


;; end
(provide 'init)

