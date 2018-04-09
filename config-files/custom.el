;; 插件个性化设置

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.3)
 '(company-show-numbers t)
 '(package-selected-packages
   (quote
    (hungry-delete markdown-mode company smartparens flycheck ivy counsel swiper company-irony flycheck-irony irony-eldoc gotham-theme spacemacs-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq package-selected-packages jerry/packages)
