(eval-after-load
  'company
  '(add-to-list 'company-backends 'company-omnisharp))

(setq omnisharp-server-executable-path "/home/jq/.vscode-server/extensions/ms-vscode.csharp-1.21.10/.omnisharp/1.34.10/run")
(setq omnisharp-server-executable-path "/home/jq/.vscode-server/extensions/ms-vscode.csharp-1.21.11/.omnisharp/1.34.11/run")

(defun my-csharp-mode-setup ()
  (omnisharp-mode)

  (c-set-style "ellemtel")
  (setq indent-tabs-mode nil)
  (setq c-syntactic-indentation t)
  (setq c-basic-offset 4)
  (setq truncate-lines t)
  (setq tab-width 4)
  (setq evil-shift-width 4)
  
  ;csharp-mode README.md recommends this too
  ;(electric-pair-mode 1)       ;; Emacs 24
  ;(electric-pair-local-mode 1) ;; Emacs 25

  (local-set-key (kbd "C-c r r") 'omnisharp-run-code-action-refactoring)
  (local-set-key (kbd "<f12>") 'omnisharp-go-to-definition)
  (local-set-key (kbd "C-c C-c") 'recompile))

(add-hook 'csharp-mode-hook 'my-csharp-mode-setup t)

;; end
(provide 'init-csharp)
