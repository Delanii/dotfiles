;;; smog-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "smog" "smog.el" (0 0 0 0))
;;; Generated autoloads from smog.el

(autoload 'smog-check-buffer "smog" "\
Analyse the surface characteristics of a buffer.

\(fn)" t nil)

(autoload 'smog-check-region "smog" "\
Analyse the surface characteristics of a selected region.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smog" '("smog-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; smog-autoloads.el ends here
