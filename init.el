;; my-stuff
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")
	     '("org" . "https://orgmode.org/elpa/"))

;; (setq package-check-signature nil)
;; (setq package-archives
      ;; '(("melpa-mirror" . "~/.emacs.d/mirror-elpa/melpa/")
	;; ("gnu-mirror" . "~/.emacs.d/mirror-elpa/gnu/")))


(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; straight bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "4ff1c4d05adad3de88da16bd2e857f8374f26f9063b2d77d38d14686e3868d8d" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "f0eb51d80f73b247eb03ab216f94e9f86177863fb7e48b44aacaddbfe3357cf1" "db5b906ccc66db25ccd23fc531a213a1afb500d717125d526d8ff67df768f2fc" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "6128465c3d56c2630732d98a3d1c2438c76a2f296f3c795ebda534d62bb8a0e3" "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))
 '(fill-column 90)
 '(org-modules
   '(org-habit ol-w3m ol-bbdb ol-bibtex ol-docview ol-gnus ol-info ol-irc ol-mhe ol-rmail ol-eww))
 '(package-selected-packages
   '(terraform-mode dockerfile-mode lsp-metals sbt-mode scala-mode org-roam visual-fill-column evil-magit counsel-projectile kaolin-themes rust-mode slime silme powerline with-editor treemacs-evil web-mode json-mode js2-refactor tide prettier-js rjsx-mode company smartparens evil-surround evil nyan-mode doom-modeline exec-path-from-shell magit lsp-pyright pyvenv hide-mode-line ccls clang-format cider rainbow-delimiters clojure-mode-extra-font-locking clojure-mode paredit nord-theme tao-theme color-theme-sanityinc-tomorrow dap-mode lsp-treemacs lsp-ui lsp-mode gcmh which-key counsel org-bullets treemacs-projectile projectile treemacs try use-package))
 '(projectile-mode t nil (projectile))
 '(warning-suppress-types
   '(((python python-shell-prompt-regexp))
     ((python python-shell-prompt-regexp)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
