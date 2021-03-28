(add-hook 'after-init-hook 'global-company-mode)

;; Dark theme
;; https://github.com/company-mode/company-mode/issues/380
;; I changed steelblue to blue for tooltip-selection
(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "blue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))


;; change keys
(with-eval-after-load 'company
  ;; Use C-n instead of M-n
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  ;; TAB to select
  (define-key company-active-map (kbd "TAB") 'company-complete-selection))

;; use company-ispell in org mode
;; https://github.com/company-mode/company-mode/issues/839#issuecomment-433045903
(add-hook 'org-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends)
                 '((company-dabbrev company-ispell)))))

(provide 'init-company)
