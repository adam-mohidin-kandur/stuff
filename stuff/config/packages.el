(setq stuff-config-packages-list
	  '(eglot async company))

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                         ("melpa" . "https://melpa.org/packages/")))

(defun stuff-config-packages-install-packages ()
  (package-initialize)

  (unless package-archive-contents
	(package-refresh-contents))

  (dolist (package stuff-config-packages-list)
	(unless (package-installed-p package)
      (package-install package))))

(provide 'stuff/config/packages)
