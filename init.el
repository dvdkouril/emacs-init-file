;; ~ basics
(blink-cursor-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

;; ~ use cmd for meta key
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

;; ~ line breaking
(global-visual-line-mode t)

;; ~ theme
(add-to-list 'custom-theme-load-path"~/.emacs.d/themes")
(load-theme 'spolsky t)

;; backup files locations:
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq backup-directory-alist `(("." . "~/.emacs_backup")))

;; ~ switching windows M-o instead of C-x o
(global-set-key (kbd "M-o") 'other-window)
