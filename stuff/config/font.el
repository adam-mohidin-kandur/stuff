(defun stuff-config-font-set-font (font-size)
  "Sets convinient fonts."
  (let ((set-font (lambda (font-name font-size)
					(when (member font-name (font-family-list))
					  (set-frame-font
					   ;; need space between font name and it's size
					   (concat font-name (format " %s" font-size)) t t))
					)))
	(cond
	 ((string-equal system-type "windows-nt")
	  (funcall set-font "Consolas" font-size))
	 ((string-equal system-type "darwin")
	  (funcall set-font "Menlo" font-size))
	 ((string-equal system-type "gnu/linux")
	  ;; todo: write smth nicier for linux
      (when (member "DejaVu Math TeX Gyre" (font-family-list))
		(set-frame-font
		 (concat "DejaVu Sans Mono " (format "%s" font-size))
		 t t))))))

(provide 'stuff/config/font)
