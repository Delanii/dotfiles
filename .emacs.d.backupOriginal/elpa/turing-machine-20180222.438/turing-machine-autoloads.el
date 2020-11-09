;;; turing-machine-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "turing-machine" "turing-machine.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from turing-machine.el

(autoload 'turing-machine-mode "turing-machine" "\
Major mode for editing turing machine code.

\(fn)" t nil)

(autoload 'turing-machine-execute "turing-machine" "\
Run the turing machine.

Initial state will come from a comment like:

  ;; INITIAL: 11_11

in the code buffer. If no such comment exists, a minibuffer
prompt will ask for the initial state. With prefix argument ARG,
always prompt for initial state.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "turing-machine" '("turing-machine-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; turing-machine-autoloads.el ends here
