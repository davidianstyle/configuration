;; .emacs

;; Package Repositories
(require 'package)
(setq package-enable-at-startup t) ; Enable loading of "default.el"
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Refresh package contents if needed
(unless package-archive-contents
  (package-refresh-contents))

;; Install missing packages
(defvar my-packages
  '(base16-theme
    color-theme-sanityinc-tomorrow))
(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; Load theme
(load-theme 'sanityinc-tomorrow-eighties t)

;; Disable backup and auto-save files
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Enable global font lock mode (syntax highlighting)
(global-font-lock-mode t)

;; Better frame titles
(setq frame-title-format "%b - Emacs")

;; Set default tab width
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil) ; Use spaces instead of tabs

;; Associate file extensions with modes
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . javascript-mode))

;; Disable UI elements
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Set cursor type ("box", "hollow", "bar", "hbar")
(setq-default cursor-type 'box)

;; Fix for package-refresh-contents error with TLS
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Add custom key bindings
(global-set-key (kbd "C-x C-j") 'goto-line)

;; Add custom load path (if needed)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Custom-set variables and faces (managed by Emacs)
(custom-set-variables
 '(package-selected-packages
   '(color-theme-sanityinc-tomorrow base16-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 )

;; End of .emacs