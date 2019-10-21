(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(if (or (string= system-type "cygwin") (string= system-type "windows-nt"))
    (progn
      (setq projectile-indexing-method 'alien)
      (setq projectile-enable-caching nil)
      (defun projectile-get-ext-command() ""
             (concat "es.exe -r " 
                     (concat (replace-regexp-in-string "/" "\\\\" default-directory t t) 
                             ".+[^\\\\]\\.[^\\\\]+$ | tr '\\n' '\\0'"))
             )
      ))

(provide 'init-projectile)


