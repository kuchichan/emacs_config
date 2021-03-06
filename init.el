;; my-stuff
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/"))

;; (setq package-check-signature nil)
;; (setq package-archives
      ;; '(("melpa-mirror" . "~/.emacs.d/mirror-elpa/melpa/")
	;; ("gnu-mirror" . "~/.emacs.d/mirror-elpa/gnu/")))


(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))
 '(fill-column 90)
 '(package-selected-packages
   '(powerline with-editor treemacs-evil web-mode json-mode js2-refactor tide prettier-js rjsx-mode company smartparens evil-surround evil nyan-mode doom-modeline exec-path-from-shell magit lsp-pyright pyvenv hide-mode-line ccls clang-format cider rainbow-delimiters clojure-mode-extra-font-locking clojure-mode paredit nord-theme tao-theme color-theme-sanityinc-tomorrow dap-mode lsp-treemacs lsp-ui lsp-mode gcmh which-key counsel org-bullets treemacs-projectile projectile treemacs try use-package))
 '(projectile-mode t nil (projectile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
