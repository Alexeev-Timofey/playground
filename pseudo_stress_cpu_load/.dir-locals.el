((rust-mode
  . ((eval
      . (add-hook
	 'projectile-find-file-hook
	 #'start-eglot-company-flycheck
	 0 t)))))
