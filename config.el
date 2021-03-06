;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Jesse Kelly"
      user-mail-address "kellyjesse881@gmail.com")

(setq doom-font (font-spec :family "Hack" :size 15)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 15)
      doom-big-font (font-spec :family "Hack" :size 20))

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))

(custom-set-faces!
  '(default :background "undefinded-bg")
  '(highlight :background "undefinded-bg" :underline t)
  '(show-paren-match :background "undefinded-bg" :weight bold :underline t)
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic)
  '(magit-diff-added :background "undefinded-bg")
  '(magit-diff-added-highlight :background "undefinded-bg")
  '(magit-diff-base :background "undefinded-bg")
  '(magit-diff-base-highlight :background "undefinded-bg")
  '(magit-diff-context :background "undefinded-bg")
  '(magit-diff-context-highlight :background "undefinded-bg")
  '(magit-diff-removed :background "undefinded-bg")
  '(magit-diff-removed-highlight :background "undefinded-bg")
  '(magit-diff-hunk-heading :background "undefinded-bg")
  '(magit-diff-hunk-heading-highlight :background "undefinded-bg")
  '(ivy-current-match :background "undefinded-bg" :weight bold :underline t)
  '(ivy-minibuffer-match-face-1 :background "undefinded-bg" :weight bold :underline t)
  '(ivy-minibuffer-match-face-2 :background "undefinded-bg" :weight bold :underline t)
  '(mode-line :background "undefinded-bg"))

(after! org
  (setq org-directory "~/cloud/"
        org-hide-emphasis-markers t))

(after! magit
  (setq git-commit-major-mode 'org-mode
        git-commit-summary-max-length 50)
  (add-hook! after-save-hook #'magit-after-save-refresh-status)
  (add-hook! git-commit-mode #'evil-normal-state))


;; Themes
(setq doom-theme 'modus-operandi)
(after! heaven-and-hell
  (setq heaven-and-hell-themes '((light . modus-operandi) (dark . doom-spacegrey))
        heaven-and-hell-load-theme-no-confirm t)
  (map!
   :g "<f6>" 'heaven-and-hell-toggle-theme
   :leader "<f6>" 'heaven-and-hell-load-default-theme))

(add-hook 'after-init-hook 'heaven-and-hell-init-hook)

(setq display-line-numbers-type `relative)
(setq next-line-add-newlines t)

(map! :n "U" #'undo-tree-visualize)
(map! :n "<escape>" #'save-buffer)

(after! company-tabnine
  (cl-pushnew 'company-tabnine (default-value 'company-backends)))

(add-to-list 'auto-mode-alist '("\\.liquid\\'" . web-mode))
