(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ccls-executable "/usr/local/bin/ccls")
 '(ccls-initialization-options
   '(:clang
     (:extraArgs
      ["-isystem/Library/Developer/CommandLineTools/usr/include/c++/v1" "-isystem/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "-isystem/Library/Developer/CommandLineTools/usr/include" "-isystem/Library/Developer/CommandLineTools/usr/lib/clang/11.0.3/include" "-isystem/usr/local/include" "-isystem/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks"]
      :resourceDir "/Library/Developer/CommandLineTools/usr/lib/clang/11.0.3")))
 '(ccls-sem-highlight-method 'font-lock)
 '(company-idle-delay 0.0)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   '("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "d4131a682c4436bb5a61103d9a850bf788cbf793f3fd8897de520d20583aeb58" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(global-spotify-remote-mode t)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(ivy-display-style 'fancy)
 '(ivy-use-virtual-buffers t)
 '(lsp-keymap-prefix "s-l")
 '(nyan-mode t)
 '(package-selected-packages
   '(cmake-mode package-lint-flymake flymake-cursor color-theme-sanityinc-tomorrow tao-yang tao-theme clang-format yasnippet-snippets company exec-path-from-shell smartparens smartparens-config smartparents-config wrap-region lsp-python-ms gcmh yasnippet-classic-snippets yasnippet dap-mode nyan-mode embrace sublime-themes lsp-ui company-lsp go-autocomplete go-mode cider rainbow-delimiters clojure-mode-extra-font-locking clojure-mode paredit pow powerline htmlize magit spacemacs-theme elpy flycheck which-key use-package try org-bullets counsel auto-complete ace-window))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(setq "/snap/bin/ccls" t)
 '(yas-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

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
