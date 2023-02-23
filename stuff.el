(require 'stuff/config/base)
(require 'stuff/config/font)
(require 'stuff/config/packages)
(require 'stuff/tools/check)
(require 'stuff/tools/set-monitor)

(defvar stuff-font-size 14)

(defun stuff-init ()
  "Entry point"
  (interactive)
  (stuff-config-base)
  (stuff-config-font-set-font stuff-font-size)
  (if (not (stuff-tools-check-guix-p))
	  (stuff-config-packages-install-packages))
  (global-set-key (kbd "<f12>") 'stuff-tools-set-monitor))

(provide 'stuff)
