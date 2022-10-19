;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom!
 :completion
 (vertico +childframe +icons)
 (company +childframe)

 :ui
 ;;deft              ; notational velocity for Emacs
 doom              ; what makes DOOM look the way it does
 ;; doom-dashboard    ; a nifty splash screen for Emacs
 ;; doom-quit         ; DOOM quit-message prompts when you quit Emacs
 (emoji +unicode +ascii +github)  ; 🙂
 hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
 ;; indent-guides     ; highlighted indent columns
 (ligatures +iosevka +extra +fira +pragmata-pro)
 minimap           ; show a map of the code on the side
 modeline          ; snazzy, Atom-inspired modeline, plus API
 nav-flash         ; blink cursor line after big motions
 ophints           ; highlight the region an operation acts on
 (popup +defaults)   ; tame sudden yet inevitable temporary windows
 unicode           ; extended unicode support for various languages
 vc-gutter         ; vcs diff in the fringe
 vi-tilde-fringe   ; fringe tildes to mark beyond EOB
 workspaces        ; tab emulation, persistence & separate workspaces
 zen               ; distraction-free coding or writing

 :editor
 (evil +everywhere); come to the dark side, we have cookies
 file-templates    ; auto-snippets for empty files
 fold              ; (nigh) universal code folding
 (format +onsave)  ; automated prettiness
 multiple-cursors  ; editing in many places at once
 parinfer          ; turn lisp into python, sort of
 rotate-text       ; cycle region at point between text candidates
 snippets          ; my elves. They type so I don't have to
 word-wrap         ; soft wrapping with language-aware indent

 :emacs
 (dired +ranger +icons)
 electric          ; smarter, keyword-based electric-indent
 (undo +tree)
 vc                ; version-control and Emacs, sitting in a tree

 :term
 vterm

 :checkers
 syntax
 (spell +aspell +everywhere) ;; TODO: pacman -S aspell aspell-en
 grammar                     ;; TODO: pacman -S languagetool

 :tools
 ansible
 debugger          ; FIXME stepping through code, to help you add bugs
 direnv
 docker
 editorconfig      ; let someone else argue about tabs vs spaces
 ein               ; tame Jupyter notebooks with emacs
 (eval +overlay)     ; run code, run (also, repls)
 gist              ; interacting with github gists
 lookup              ; navigate your code and its documentation
 lsp
 (magit +forge)
 make              ; run make tasks from Emacs
 (pass +auth)
 pdf               ; pdf enhancements
 ;;prodigy           ; FIXME managing external services & code builders
 rgb
 ;;taskrunner        ; taskrunner for all your projects
 terraform         ; infrastructure as code
 ;;tmux              ; an API for interacting with tmux
 ;;upload            ; map local to remote projects via ssh/ftp

 :os
 (:if IS-MAC macos)  ; improve compatibility with macOS
 tty                 ; improve the terminal Emacs experience

 :lang
 cc                ; C/C++/Obj-C madness
 clojure           ; java with a lisp
 common-lisp       ; if you've seen one lisp, you've seen them all
 data              ; config/data formats
 (dart +flutter)   ; paint ui and not much else
 elm               ; care for a cup of TEA?
 emacs-lisp        ; drown in parentheses
 (go +lsp)         ; the hipster dialect
 (haskell +dante)  ; a language that's lazier than I am
 (json +lsp +tree-sitter)
 (java +meghanada +lsp) ; the poster child for carpal tunnel syndrome
 (javascript +lsp +tree-sitter)
 julia
 latex
 ledger
 lua
 (markdown +grip)
 nix
 (org +pretty +pandoc +noter +journal +hugo +roam +present +dragndrop)
 plantuml
 purescript
 python
 raku
 rest
 (ruby +rails)
 (rust +lsp)
 scala
 scheme
 (sh +lsp)
 (web +lsp +tree-sitter)
 (yaml +lsp)

 :email
 (mu4e +gmail)
 ;;notmuch
 ;;(wanderlust +gmail)

 :app
 calendar
 (rss +org)
 twitter

 :config
 literate
 (default +bindings +smartparens))
