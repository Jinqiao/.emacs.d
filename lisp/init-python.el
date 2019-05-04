;; elpy
(elpy-enable)

;; use ipython
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

;; disable indention highlight
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))

;; end
(provide 'init-python)
