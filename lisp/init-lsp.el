;; to use lsp with javascript/typescript
;; we need to install the language server
;; see https://emacs-lsp.github.io/lsp-mode/page/lsp-typescript/
;; basically need to npm install typescript-language-server

;; below are from https://emacs-lsp.github.io/lsp-mode/page/installation/
;; if you want to change prefix for lsp-mode keybindings.
(setq lsp-keymap-prefix "C-c l")

(require 'lsp-mode)
(add-hook 'js-mode-hook #'lsp-deferred)

;; init-lsp end
(provide 'init-lsp)
