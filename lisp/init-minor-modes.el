;; undo-tree
(add-hook 'after-init-hook 'global-undo-tree-mode)

;; winner mode
(winner-mode 1)

;; beacon mode
(beacon-mode 1)

;; show paren mode
(add-hook 'prog-mode-hook 'show-paren-mode)

;; electric-pair
(add-hook 'prog-mode-hook 'electric-pair-mode)

;; paredit
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)

;; recentf
(add-hook 'after-init-hook 'recentf-mode)
(setq recentf-max-saved-items 100)

;; move-dup
(global-move-dup-mode)
(global-set-key (kbd "M-<up>") 'md-move-lines-up)
(global-set-key (kbd "M-<down>") 'md-move-lines-down)
(global-set-key (kbd "C-<prior>") 'md-duplicate-up)
(global-set-key (kbd "C-<next>") 'md-duplicate-down)

;; symbol-overlay
(add-hook 'prog-mode-hook 'symbol-overlay-mode)
(global-set-key (kbd "M-i") 'symbol-overlay-put)

;; end
(provide 'init-minor-modes)
