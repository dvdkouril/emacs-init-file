(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;;(setq-default word-wrap t)

(global-visual-line-mode t)

(require 'hi2)
(add-hook 'haskell-mode-hook 'turn-on-hi2)

;;; I prefer cmd key for meta
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

(blink-cursor-mode 0)
;;;(toggle-frame-fullscreen)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(custom-safe-themes
   (quote
    ("0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" default)))
 '(package-selected-packages (quote (auctex hi2 haskell-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'custom-theme-load-path "~/emacs.d/themes")
;;(load-theme 'spolsky t)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.


;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)


(add-to-list 'load-path "~/emacs.d/")
(load "window-numbering.el")
(window-numbering-mode)

(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))

;; trying to make LaTeX work:
(setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:$PATH" t)

;; spell checking
;;(setq ispell-program-name "aspell") ; could be ispell as well, depending on your preferences
;;(setq ispell-dictionary "english") ; this can obviously be set to any language your spell-checking program supports

;;(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;;(add-hook 'LaTeX-mode-hook 'flyspell-buffer)
