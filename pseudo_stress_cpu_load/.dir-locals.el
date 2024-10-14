((auto-mode-alist ("\\.rs\\'" . rust-ts-mode))
 (rust-ts-mode
  . ((eval
     . (progn
	 (eglot-ensure)
	 (company-mode)
	 (flycheck-mode))))))
