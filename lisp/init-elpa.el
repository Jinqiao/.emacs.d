;; package
(require 'package)


(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; refresh contents if package-user-dir not exists
(or
 (file-exists-p package-user-dir)
 (package-refresh-contents))

;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; install the missing packages
;; https://stackoverflow.com/a/10093312/4499942
(setq package-list '(company beacon counsel elpy expand-region flycheck move-dup
                             multiple-cursors symbol-overlay undo-tree paredit smex projectile))

;; if below throw error, run package-refresh-contents, and try again
(dolist (package (append package-list package-selected-packages))
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-elpa)
