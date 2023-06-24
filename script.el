(let ((directory "stuff"))
  (mapcar #'org-babel-load-file
		  (mapcar (apply-partially #'concat (getenv "PWD") "/")
				  (mapcar (apply-partially #'concat (concat directory "/"))
						  (remove "." (remove ".." (directory-files (concat "./" directory))))))))
