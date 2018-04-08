;; default调整


(setq make-backup-files nil)  ;; 关闭自动备份
(setq auto-save-default nil)  ;; 关闭自动保存的记录
(global-auto-revert-mode t) ;; 开启自动刷新以便于和外界交互
(delete-selection-mode t)  ;; 输入时替换所选文本

;; 最近使用的文件列表
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 10)

;; 定义快速打开init.el文件的函数
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; yes or no -> y or n
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-better-default)
