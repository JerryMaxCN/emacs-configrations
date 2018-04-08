;; C/C++ configration


(add-hook 'c++-mode-hook (lambda () (c-set-style "linux")))  ;; 设置C++代码风格
(add-hook 'c-mode-common-hook (lambda () (c-set-style "linux")))  ;; 设置C代码风格

(require 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'irony-mode-hook #'irony-eldoc)

(require 'company-irony-c-headers)
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

;; flycheck for C++11
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++11")))
(add-hook 'c++-mode-hook
	  (lambda () (setq flycheck-gcc-language-standard "c++11")))




(provide 'init-cpp)
