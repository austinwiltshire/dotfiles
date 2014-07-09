
;; disable splash screen
(setq inhibit-splash-screen t)

;; enable transient mark mode
(transient-mark-mode 1)

;; org mode
;; enable
(require 'org)


(require 'package)
(add-to-list 'package-archives 
	         '("marmalade" .
		         "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)

(setq gdb-many-windows t)
