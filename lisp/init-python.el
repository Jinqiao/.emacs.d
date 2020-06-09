;; elpy
(elpy-enable)

;; python path
(setq elpy-rpc-python-command "~/local/bin/python")

;; use ipython
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

;; Use flycheck instead of flymake
(when (load "flycheck" t t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Dot not use project root as pwd
(setq elpy-shell-use-project-root nil)
(setq elpy-shell-starting-directory 'current-directory)

;; do not echo output
(setq elpy-shell-echo-output nil)

;; end
(provide 'init-python)
