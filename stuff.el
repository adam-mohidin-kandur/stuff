(require 'stuff/config)
(require 'stuff/tools)

(defvar stuff-default-font-size 14)

(defun stuff-interactive-init (font-size)
  (interactive "sEnter font size to use> ")
  (stuff-init font-size))

(defun stuff-init (font-size)
  "Initialize configs."
  (stuff-config-base)
  (stuff-config-font-set-font font-size)
  (if (not (stuff-tools-check-guix-p))
	  (stuff-config-packages-install-packages))
  (global-set-key (kbd "<f12>") 'stuff-tools-set-monitor))

(provide 'stuff)
