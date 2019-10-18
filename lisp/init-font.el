;; from https://github.com/hick/emacs-chinese
;; fix garbage character issues
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-next-selection-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; prettify-symbols
(setq prettify-symbols-unprettify-at-point t)
(add-hook 'after-init-hook 'global-prettify-symbols-mode)

;; customize symbols
(add-hook 'prog-mode-hook
          (lambda ()
            (push '("<=" . ?≤) prettify-symbols-alist)
            (push '(">=" . ?≥) prettify-symbols-alist)
            ))

;; fira code
(require 'fira-code-mode)
(if (eq window-system 'w32)
    (add-hook 'prog-mode-hook 'fira-code-mode))

;; end
(provide 'init-font)
