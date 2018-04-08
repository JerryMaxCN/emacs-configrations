;; package设置

;; 添加插件源
(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))
  (add-to-list 'package-archives '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
  )

;; 添加插件
(defvar jerry/packages '(
			 popwin
			 hungry-delete
			 markdown-mode
			 company
			 smartparens
			 flycheck
			 ivy
			 counsel
			 swiper
			 irony
			 company-irony
			 flycheck-irony
			 irony-eldoc
			 company-irony-c-headers
			 gotham-theme
			 spacemacs-theme
			 ) "Default packages")

;; 测试插件安装与否决定是否安装
(require 'cl)
(defun jerry/packages-installed-p ()
  (loop for pkg in jerry/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(setq package-selected-packages jerry/packages)

(unless (jerry/packages-installed-p)
  (message "%s" "Refresh Package Database...")
  (package-refresh-contents)
  (dolist (pkg jerry/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


;; popwin打开buffer快速切换
(require 'popwin)
(popwin-mode 1)

;; hungry-delete一次删除多个空格
(require 'hungry-delete)
(global-hungry-delete-mode)

;; smartparens括号配对，以及修复与hungry-delete的冲突
(smartparens-global-mode 1)
(show-paren-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(defadvice hungry-delete-backward (before sp-delete-pair-advice activate) (save-match-data (sp-delete-pair (ad-get-arg 0))))
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
        (t (save-excursion
             (ignore-errors (backward-up-list))
             (funcall fn)))))

;; company全局补全
(add-hook 'after-init-hook 'global-company-mode)

;; flycheck语法检测
(global-flycheck-mode)

;; ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


(provide 'init-packages)
