;; load custom https://stackoverflow.com/a/5058752/4499942

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")

;; add the lisp dir to load-path
;; load-path contains dirs serched by "require"
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; add to info path
(add-to-list 'Info-directory-list "~/../../usr/share/info")

;; load my init files
(require 'better-defaults)
(require 'init-font)
(require 'init-local) ;; this file vary site by site
(require 'init-elpa)
(require 'init-company)
(require 'init-flycheck)
(require 'init-python)
(require 'init-jq)
(require 'init-minor-modes)
(require 'init-csharp)
(require 'jq-lib)
(require 'init-ivy)
(require 'init-projectile)
;; packages to explore:
;; wgrep, diminish, scratch, command-log-mode
;; origami -> for text folding

;; end
(provide 'init)

