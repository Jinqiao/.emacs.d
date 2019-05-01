;; package
(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; refresh contents if package-user-dir not exists
(or
 (file-exists-p package-user-dir)
 (package-refresh-contents))

;; install the missing packages
;; https://stackoverflow.com/a/10093312/4499942
(setq package-list '(company beacon counsel elpy expand-region flycheck move-dup multiple-cursors symbol-overlay undo-tree))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-elpa)
