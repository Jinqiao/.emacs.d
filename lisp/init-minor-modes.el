;; prettify-symbols
(add-hook 'after-init-hook 'global-prettify-symbols-mode)

;; undo-tree
(add-hook 'after-init-hook 'global-undo-tree-mode)

;; beacon mode
(beacon-mode 1)

;; show paren mode
(add-hook 'prog-mode-hook 'show-paren-mode)

;; paredit
(add-hook 'prog-mode-hook 'paredit-mode)

;; anzu, Swiper show do the job to show number of matches
;; (global-anzu-mode 1)


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
