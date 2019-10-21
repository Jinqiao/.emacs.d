;; ivy, counsel, swiper
;; also install smex to make M-x remember history
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)

;; minibuffer keys
(define-key ivy-minibuffer-map (kbd "RET") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<up>") 'ivy-previous-line-or-history)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; https://emacs.stackexchange.com/a/36748
(with-eval-after-load 'ivy
  (push (cons 'swiper (cdr (assq t ivy-re-builders-alist)))
        ivy-re-builders-alist)
  (push (cons t 'ivy--regex-fuzzy)
        ivy-re-builders-alist)
  ;; ivy-initial-inputs https://emacs.stackexchange.com/a/38842
  ;; below not work, use cusomize instead, also not work, seems a bug
  ;; https://github.com/abo-abo/swiper/pull/2286
  ;; (setcdr (assoc 'counsel-M-x ivy-initial-inputs-alist) "")
  (setq ivy-initial-inputs-alist '((counsel-minor . "^+")
                                  (counsel-package . "^+")
                                  (counsel-org-capture . "^")
                                  (counsel-M-x . "")
                                  (counsel-describe-function . "^")
                                  (counsel-describe-variable . "^")
                                  (org-refile . "^")
                                  (org-agenda-refile . "^")
                                  (org-capture-refile . "^")
                                  (Man-completion-table . "^")
                                  (woman . "^"))))

;; end
(provide 'init-ivy)
