;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------
(setq-default
 make-backup-files nil
 blink-cursor-interval 0.4
 bookmark-default-file (expand-file-name ".bookmarks.el" user-emacs-directory)
 case-fold-search t
 delete-selection-mode t
 indent-tabs-mode nil
 mouse-yank-at-point t
 save-interprogram-paste-before-kill t
 scroll-preserve-screen-position 'always
 set-mark-command-repeat-pop t
 truncate-lines t
 truncate-partial-width-windows nil)

;;----------------------------------------------------------------------------
;; Key bindings
;;----------------------------------------------------------------------------
;; kill current line
(global-set-key (kbd "M-9") (lambda () (interactive)
                              (kill-whole-line)
                              (previous-line)
                              (move-end-of-line)))

;; scroll by arrow key;
(global-set-key [up] (lambda () (interactive) (scroll-down 1)))
(global-set-key [down] (lambda () (interactive) (scroll-up 1)))

;; Newline behaviour
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "S-<return>")
                (lambda () (interactive)
                  (move-end-of-line 1)
                  (newline-and-indent)))

;; expand region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; quit other window, use kbd macro C-x o q
;; https://emacs.stackexchange.com/a/71
(fset 'quit-other-window (lambda (&optional arg)
        "Keyboard macro: C-x o q"
        (interactive "p")
        (kmacro-exec-ring-item (quote ("oq" 0 "%d")) arg)))

(global-set-key (kbd "C-x C-q") (lambda () (interactive) (quit-other-window)))

;;----------------------------------------------------------------------------
;; Some more preferences
;;----------------------------------------------------------------------------
;; disable trailing-whitespace in eshell mode
(add-hook 'eshell-mode-hook
 (lambda () (setq show-trailing-whitespace nil)))

;; save all backup files to ~/.emacs.d/backups
;; https://stackoverflow.com/a/151946
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq make-backup-files nil)

;; init-jq end
(provide 'init-jq)

