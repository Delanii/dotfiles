;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Toto spustí emacs vždy ve word-wrap módu - zalamování řádků na koncích slov (v mezerách)
(global-visual-line-mode t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;

(setq comp-deferred-compilation t)

;; Nastavení defaultního jazyka na češtinu

(ispell-change-dictionary "czech" t)

;; Nastavení spellchecku pro angličtinu a češtinu současně - funguje ve Spacemacs (`.spacemacs`), ale ne zde

;; (setq ispell-program-name "hunspell")
;; you could set `ispell-dictionary` instead but `ispell-local-dictionary' has higher priority
;; (setq ispell-local-dictionary "en_US")
;; (setq ispell-local-dictionary-alist '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US,cs_CZ") nil utf-8)))

;; Start Emacs always maximized

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Změna fontu - spíš ukázka:
;; (setq doom-font (font-spec :family "Fira Mono" :size 12))

;; Vypnutí automatické indentace tabulátory:
(setq-default indent-tabs-mode nil)

;;
;; Nastaveí pro balíčky modálních editorů (kromě evil)
;;
;; Nastavení balíčku 'boon
;; (require 'boon-qwertz)
;; alternativně 'boon-qwerty

;; Nastavení balíčku 'xah-fly-keys
;; (require 'xah-fly-keys)
;; (xah-fly-keys-set-layout "qwertz")

;;
;; Specifická nastavení pro org-mode
;;
;; Nastavení věcí, co se spustí s org-mode
;; tedy org-autolist

(add-hook 'org-mode-hook (
                          lambda () (org-autolist-mode))
          )

;; Nastavení org-directory. Org-agenda-files čerpají ze stejného nastavení

(custom-set-variables
 '(org-directory "~/Documents/org")
 '(org-agenda-files (list org-directory)))

;; Nastavení defaultního souboru pro capture

(setq org-default-notes-file (concat org-directory "/notesDefaultFile.org"))

;; Nastavení způsobu zvýrazňování vlastní TODO-sekvencí
;; =org-emphasis-alist= je proměnná obsahující delimitery pro markup. Seznam delimiterů je bohužel hardcoded; nelze přidat další, ale lze redefinovat způsob zvýraznění
;; daných delimiterů. Níže je redefinice =+=; dalo by se redefinovat i =~=; kromě =:foreground= má zabarvení i parametr =:background=

(after! org
  (setq org-todo-keyword-faces
        '(("IMPORTANT" . (:foreground "red" :weight bold))
          ))
  (add-to-list 'org-emphasis-alist
               '("+" (:foreground "red")))
  )

;; Nastavení vlastních delimiterů pro zvýrazňování textu; text mezi =%= a =!= je zvýrazněn.
(require 'org-habit nil t)

(defun org-add-my-extra-fonts ()
  "Add alert and overdue fonts. =invisible t= způsobí zmizení delimiteru v zobrazeném textu, =nil= jej ponechá zobrazený. Jake delimitery jsou použity =%%= a =!!=. Řešeno dle: https://emacs.stackexchange.com/questions/35626/how-to-make-my-own-org-mode-text-emphasis-work-again/35632#35632"
  (add-to-list 'org-font-lock-extra-keywords '("\\(!!\\)\\([^\n\r\t]+\\)\\(!!\\)"
                                               (1 '(face org-habit-alert-face invisible t)) (2 'org-habit-alert-face t) (3 '(face org-habit-alert-face invisible t))) t)
  (add-to-list 'org-font-lock-extra-keywords '("\\(%%\\)\\([^\n\r\t]+\\)\\(%%\\)"
                                               (1 '(face org-habit-overdue-face invisible nil)) (2 'org-habit-overdue-face t) (3 '(face org-habit-overdue-face invisible nil))) t))

(add-hook 'org-font-lock-set-keywords-hook #'org-add-my-extra-fonts)

;; Alternativa zde:
;; https://emacs.stackexchange.com/questions/62045/define-new-keywords-in-orgmode
;; (require 'cl-lib)
;; (defface ex-face
;;   '((t (:foreground "red")))
;;   "Face for !!")

;; (defface caret-face
;;   '((t (:foreground "orange")))
;;   "Face for ^^")

;; (defface at-face
;;   '((t (:foreground "green")))
;;   "Face for %%")

;; (defvar my-org-custom-keywords
;;   '(("!!" . ex-face)
;;     ("^^" . caret-face)
;;     ("%%" . at-face)))

;; (defun my-org-add-custom-keywords ()
;;   "Add custom keywords."
;;   (cl-loop for (delimiter . face) in my-org-custom-keywords
;;         do (add-to-list 'org-font-lock-extra-keywords
;;                         `(,(concat "\\(" (regexp-quote delimiter)
;;                                    "\\)\\([^\n\r\t]+\\)\\("
;;                                    (regexp-quote delimiter) "\\)")
;;                           (1 '(face ,face invisible t))
;;                           (2 ',face)
;;                           (3 '(face ,face invisible t))))))

;; (add-hook 'org-font-lock-set-keywords-hook #'my-org-add-custom-keywords)
;;

;; Nastavení org-babel-clojure-backend pro evaluaci kódu clojure v org
(setq org-babel-clojure-backend 'cider)

;; Umožnění spouštění Jupyter notebooků přes =ein=
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ein . t)))

;; Přidání dalších zpráv při odchodu z Doom Emacs
;;
(setq +doom-quit-messages '(;;from doom 2
                            "Don't go now, there's a dimensional shambler waiting at the dos prompt!"
                            "Get outta here and go back to your boring programs."
                            "If I were your boss, I'd deathmatch ya in a minute!"
                            "Look, bud. You leave now and you forfeit your body count!"
                            "You're lucky I don't smack you for thinking about leaving."))
