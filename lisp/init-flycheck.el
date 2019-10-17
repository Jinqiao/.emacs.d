;; global flycheck
(add-hook 'after-init-hook 'global-flycheck-mode)

;; https://stackoverflow.com/a/15556197/4499942
;; use 'M-x checkdoc-current-buffer' to fix flycheck format errors
(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  ;; https://emacs.stackexchange.com/questions/10244/flycheck-could-not-find-file-under-load-path
  (setq-default flycheck-emacs-lisp-load-path "inherit")
  (setq flycheck-flake8rc "~/.config/flake8"))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
