;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

;;
;; Packages for modal editing
;;
;; Packages connected to evil-mode
(package! evil-matchit)
(package! evil-tutor)
(package! evil-nerd-commenter)

;; Packages connected to other modal editing
(package! god-mode) ;; Již v Doom Emacs - ale při povolení v =init.el= aktivuje god-mode všude, což mě mate ... Možná bych si na to zvykl, testovat. Prozatím zapnuto zde a vypnuto v =init.el=
(package! ryo-modal)
(package! modalka)
;; (package! boon) ;; 03. 02. 2021: Problémy s buildem v native emacs 28, vypnuto
(package! xah-fly-keys)
(package! kakoune)

;; Organizace bufferů
(package! bufler)

;;
;; Packages connected to writing and `pandoc`
;;
(package! wc-mode)
(package! pandoc-mode)
(package! expand-region)
(package! focus)

;; Documentation packages
;;
(package! tldr)

;;
;; Packages connected specifically to org-mode
;;
(package! org-autolist)
(package! org-ref)
(package! org-roam-server)
(package! org-ql)
;; (package! org-plus-contrib) ;; rozbije export z org-mode do jiných formátů
(package! org-pdftools)
(package! navi)

;; Package for using =defblock= function and for simultanious export to html, latex or other formats
(package! org-special-block-extras)

;; Souštění kódu v org-mode
;; (package! ob-raku) ;; Není na MELPA, ručně jej instalovat nebudu

;; Spouštění kódu ve Scale
;; (package! ob-scala) ;; Opět není v MELPA

;; Balíčky pro LaTeX které nejsou v distribuci
;;
;; Mimojiné umožňuje folding jako v org-mode
(package! latex-extra)

;; Balíčky pro programování a programovací jazyky
;;
;; Všeobecná úprava programovacích rozhraní
;; (package! outorg) ;; Umožňuje pracovat s kódem jako s org-mode, jen je třeba vkládat do kódu komentáře formátované jako napisy org-mode; zde ale pro změnu dělá interferenci s org-autolist, protože to vypadá, že způsobuje změny formátování při psaní "+" apod ...
(package! prism)                        ;; Mění zvýrazňování syntaxe tak, aby reflektovala i hloubku závorek, cyklů, atp ...

;; Následující balíček by měl zvýšit rychlost parsování zdrojového kódu v souborech
(package! tree-sitter)
(package! tree-sitter-langs)

;; cider je IDE pro clojure. Umožňuje evaluaci clojure v org-mode
(package! cider)

;; Úpravy dired
;;
(package! dired-open)

;; Balíček pro vytváření dalších expanzí a regexů; myslím
;;
(package! ample-regexps)
;; a pro lepší funkcionální programování v elisp
(package! dash)

;; Balček pro rich content v eshell
(package! shx)

;; Balíček exwm - window manager pro celé OS uvnitř Emacs - spustit při loginu do PC
;;
(package! exwm)
(package! dmenu)
