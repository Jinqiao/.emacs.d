;; https://stackoverflow.com/a/18697151/4499942
;; https://stackoverflow.com/a/912397/4499942
;; (if (string= (getenv "USER") "a677356")
;;     (progn
;;       (setq url-proxy-services
;;             '(("http" . "10.50.62.14:8080")))
;;       ))

;; fix cygwin cannot start server issue
;; https://stackoverflow.com/a/1313577/4499942
(require 'server)
(and (>= emacs-major-version 23)
     (defun server-ensure-safe-dir (dir) "Noop" t))


(provide 'init-local)
