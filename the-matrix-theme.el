;;; the-matrix-theme.el --- Green-on-black dark theme inspired by "The Matrix" movie -*- lexical-binding: t; -*-

;; Copyright (C) 2021–2025 Dan Dee

;; Author: Dan Dee <monkeyjunglejuice@pm.me>
;; URL: https://github.com/monkeyjunglejuice/matrix-emacs-theme
;; Version: 1.4.1
;; Package-Requires: ((emacs "26.1"))
;; Keywords: faces, theme
;; SPDX-License-Identifier: MIT

;; This file is not part of GNU Emacs.

;;; Commentary:
;;
;; "Unfortunately, no one can be told what The Matrix Theme is.
;; You'll have to see it for yourself." --Morpheus
;; I've made this almost monochrome green-on-black theme, because
;; it helps me focus. Syntax highlighting is implemented by different
;; font styles and a green base color which varies only in brightness
;; and luminosity, with additional clues in red and blue.
;;
;; Other themes:
;; - "Beach" <https://github.com/monkeyjunglejuice/beach-emacs-theme>
;;
;;; Code:

(deftheme the-matrix
  "Unfortunately, no one can be told what The Matrix Theme is.
You'll have to see it for yourself. --Morpheus")

;; colors
(let* ((color-bg      "#000000")
       (color-bg-alt  "#01120a")
       (color-bg-red  "#30000c")
       (color-bg-blue "#001e2e")
       (color-hl      "#00ff88")
       (color-bright  "#00e57a")
       (color-middle  "#00cd6d")
       (color-fg      "#00b25f")
       (color-dark    "#00733d")
       (color-darker  "#004022")
       (color-darkest "#011f11")
       (color-red     "#cc0037")
       (color-blue    "#0081c7"))

  (custom-theme-set-faces
   'the-matrix

   `(button ((t (:weight bold :inherit link))))
   `(cursor ((t (:background ,color-bright))))
   `(default ((t (:background ,color-bg :foreground ,color-fg))))
   `(error ((t (:foreground ,color-red))))
   `(escape-glyph ((t (:weight bold :inherit font-lock-string-face))))
   `(fringe ((t (:background ,color-bg-alt))))
   `(header-line ((t (:foreground ,color-dark))))
   `(help-face-button ((t (:inherit button))))
   `(help-key-binding ((t (:foreground ,color-fg :weight bold :inherit fixed-pitch-serif))))
   `(highlight ((t (:background ,color-darkest :underline (:color ,color-hl)))))
   `(hl-line ((t (:underline (:color ,color-dark) :extend t))))
   `(isearch ((t (:foreground ,color-hl :weight bold :underline t))))
   `(isearch-fail ((t (:inherit error))))
   `(lazy-highlight ((t (:foreground ,color-blue :background ,color-bg-blue :underline t))))
   `(line-number ((t (:foreground ,color-darker :inherit default))))
   `(line-number-current-line ((t (:foreground ,color-dark :weight bold))))
   `(link ((t (:foreground ,color-fg :underline t))))
   `(link-visited ((t (:foreground ,color-dark :underline t))))
   `(match ((t (:foreground ,color-bright :weight bold))))
   `(minibuffer-prompt ((t (:foreground ,color-bright :weight bold))))
   `(mode-line ((t (:foreground ,color-dark :box (:color ,color-fg)))))
   `(mode-line-buffer-id ((t (:foreground ,color-bright :weight bold))))
   `(mode-line-highlight ((t (:inherit highlight))))
   `(mode-line-inactive ((t (:foreground ,color-dark :box (:color ,color-darker)))))
   `(region ((t (:foreground ,color-middle :background ,color-darker))))
   `(secondary-selection ((t (:background ,color-bg-alt))))
   `(separator-line ((t (:height 0.1 :background ,color-darker))))
   `(shadow ((t (:foreground ,color-dark))))
   `(show-paren-match ((t (:foreground ,color-hl :weight bold :underline t))))
   `(show-paren-match-expression ((t (:underline (:color ,color-dark)))))
   `(show-paren-mismatch ((t (:inherit error))))
   `(success ((t (:foreground ,color-middle))))
   `(trailing-whitespace ((t (:background ,color-bg-red))))
   `(transient-key-stay ((t (:foreground ,color-blue))))
   `(vertical-border ((t (:foreground ,color-dark :background unspecified))))
   `(warning ((t (:foreground ,color-blue))))
   `(widget-field ((t (:foreground ,color-bright :background ,color-bg-alt))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground ,color-fg :slant italic))))
   `(font-lock-comment-face ((t (:foreground ,color-dark :inherit fixed-pitch-serif))))
   `(font-lock-constant-face ((t (:foreground ,color-fg))))
   `(font-lock-doc-face ((t (:foreground ,color-dark :slant italic :inherit fixed-pitch-serif))))
   `(font-lock-function-name-face ((t (:foreground ,color-middle))))
   `(font-lock-keyword-face ((t (:foreground ,color-bright))))
   `(font-lock-operator-face ((t (:foreground ,color-middle :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,color-middle))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,color-middle))))
   `(font-lock-string-face ((t (:background ,color-darkest :inherit fixed-pitch-serif))))
   `(font-lock-type-face ((t (:weight bold))))
   `(font-lock-variable-name-face ((t (:foreground ,color-fg))))
   `(font-lock-warning-face ((t (:foreground ,color-red :slant italic))))

   ;; ansi-colors
   `(ansi-color-black ((t (:foreground ,color-dark :background ,color-dark))))
   `(ansi-color-red ((t (:foreground ,color-red :background ,color-red))))
   `(ansi-color-green ((t (:foreground ,color-bright :background ,color-bright))))
   `(ansi-color-yellow ((t (:foreground ,color-bright :background ,color-bright))))
   `(ansi-color-blue ((t (:foreground ,color-blue :background ,color-blue))))
   `(ansi-color-magenta ((t (:foreground ,color-middle :background ,color-middle))))
   `(ansi-color-cyan ((t (:foreground ,color-middle :background ,color-middle))))
   `(ansi-color-white ((t (:foreground ,color-fg :background ,color-fg))))

   ;; term colors
   `(term ((t (:inherit default))))
   `(term-bold ((t (:weight bold))))
   `(term-color-black ((t (:foreground ,color-bg :background ,color-bg))))
   `(term-color-blue ((t (:foreground ,color-blue :background ,color-blue))))
   `(term-color-cyan ((t (:foreground ,color-middle :background ,color-middle))))
   `(term-color-green ((t (:foreground ,color-middle :background ,color-middle))))
   `(term-color-magenta ((t (:foreground ,color-middle :background ,color-middle))))
   `(term-color-red ((t (:foreground ,color-red :background ,color-red))))
   `(term-color-white ((t (:foreground ,color-fg :background ,color-fg))))
   `(term-color-yellow ((t (:foreground ,color-middle :background ,color-middle))))
   `(term-underline ((t (:underline t))))

   ;; shell-script-mode
   `(sh-heredoc ((t (:foreground unspecified :inherit font-lock-string-face))))
   `(sh-quoted-exec ((t (:inherit font-lock-function-name-face))))

   ;; dired
   `(dired-header ((t (:foreground ,color-bright :slant italic))))
   `(dired-directory ((t (:weight bold))))
   `(dired-broken-symlink ((t (:slant italic :inherit error))))
   `(dired-symlink ((t (:slant italic))))
   `(dired-mark ((t (:foreground ,color-hl :background ,color-darker))))
   `(dired-marked ((t (:foreground ,color-bright :background ,color-darker))))
   `(dired-flagged ((t (:foreground ,color-red :background ,color-bg-red))))
   `(dired-perm-write ((t (:foreground ,color-bright))))
   `(dired-special ((t (:foreground ,color-middle))))

   ;; dired-subtree
   `(dired-subtree-depth-1-face ((t (:background unspecified))))
   `(dired-subtree-depth-2-face ((t (:background unspecified))))
   `(dired-subtree-depth-3-face ((t (:background unspecified))))
   `(dired-subtree-depth-4-face ((t (:background unspecified))))
   `(dired-subtree-depth-5-face ((t (:background unspecified))))
   `(dired-subtree-depth-6-face ((t (:background unspecified))))

   ;; eldoc
   `(eldoc-highlight-function-argument ((t (:inherit lazy-highlight))))

   ;; proced
   `(proced-mark ((t (:inherit dired-mark))))
   `(proced-marked ((t (:inherit dired-marked))))

   ;; eshell
   `(eshell-prompt ((t (:inherit minibuffer-prompt))))
   `(eshell-ls-backup ((t (:inherit dired-ignored))))
   `(eshell-ls-directory ((t (:inherit dired-directory))))
   `(eshell-ls-archive ((t (:slant italic :inherit dired-directory))))
   `(eshell-ls-symlink ((t (:inherit dired-symlink))))
   `(eshell-ls-executable ((t (:foreground ,color-bright))))
   `(eshell-ls-missing ((t (:inherit error))))
   `(eshell-ls-product ((t (:foreground ,color-middle))))
   `(eshell-ls-readonly ((t (:inherit shadow))))
   `(eshell-ls-special ((t (:inherit dired-special))))

   ;; comint
   `(comint-highlight-prompt ((t (:inherit minibuffer-prompt))))
   `(comint-highlight-input ((t (:foreground ,color-fg))))

   ;; completions
   `(completions-common-part ((t (:inherit match))))
   `(icomplete-first-match ((t (:foreground ,color-hl :weight bold :underline t))))

   ;; diff
   `(diff-added ((t (:foreground ,color-blue :background ,color-bg-blue))))
   `(diff-removed ((t (:foreground ,color-red :background ,color-bg-red))))
   `(diff-context ((t (:inherit shadow))))
   `(diff-file-header ((t (:background ,color-hl :weight bold))))
   `(diff-header ((t (:background ,color-hl :foreground ,color-fg))))

   ;; package
   `(package-name ((t (:weight bold))))
   `(package-description ((t (:inherit fixed-pitch-serif))))
   `(package-status-available ((t (:slant italic))))
   `(package-status-installed ((t (:foreground ,color-blue :slant italic))))
   `(package-status-dependency ((t (:foreground ,color-dark :slant italic))))
   `(package-status-built-in ((t (:foreground ,color-dark :slant italic))))
   `(package-status-incompat ((t (:slant italic :inherit font-lock-warning-face))))

   ;; customization
   `(custom-button ((t (:foreground ,color-bg :background ,color-fg :box (:color ,color-bg)))))
   `(custom-button-mouse ((t (:foreground ,color-hl :background ,color-dark))))
   `(custom-button-pressed ((t (:foreground ,color-hl :background ,color-darker :box (:color ,color-hl)))))
   `(custom-button-pressed-unraised ((t (:inherit custom-button-pressed))))
   `(custom-button-unraised ((t (:inherit custom-button))))
   `(custom-comment ((t (:inherit font-lock-doc-face))))
   `(custom-comment-tag ((t (:foreground ,color-fg))))
   `(custom-documentation ((t (:inherit fixed-pitch-serif))))
   `(custom-group-tag ((t (:inherit bold))))
   `(custom-state ((t (:foreground ,color-bright :slant italic))))
   `(custom-variable-tag ((t (:foreground ,color-fg :weight bold))))
   `(custom-variable-obsolete ((t (:foreground ,color-dark :weight bold))))
   `(custom-visibility ((t (:inherit custom-documentation :underline t))))

   ;; info
   `(info-node ((t (:foreground ,color-bright :weight bold :slant italic))))
   `(info-menu-star ((t (:foreground ,color-bright))))

   ;; message
   `(message-header-name ((t (:foreground ,color-dark :weight bold :slant italic))))
   `(message-header-other ((t (:foreground ,color-fg))))
   `(message-header-cc ((t (:inherit message-header-other))))
   `(message-header-newsgroups ((t (:inherit message-header-other))))
   `(message-header-xheader ((t (:inherit message-header-other))))
   `(message-header-subject ((t (:foreground ,color-bright :weight bold))))
   `(message-header-to ((t (:foreground ,color-bright))))
   `(message-cited-text ((t (:foreground ,color-dark :inherit italic))))
   `(message-mml ((t (:foreground ,color-bright))))
   `(message-separator ((t (:inherit font-lock-comment-face))))

   ;; erc
   `(erc-notice-face ((t (:foreground ,color-dark :weight unspecified))))
   `(erc-header-line ((t (:inherit header-line))))
   `(erc-timestamp-face ((t (:foreground ,color-bright :weight unspecified))))
   `(erc-current-nick-face ((t (:background ,color-dark :foreground ,color-bg :weight unspecified))))
   `(erc-input-face ((t (:foreground ,color-dark))))
   `(erc-prompt-face ((t (:inherit minibuffer-prompt))))
   `(erc-my-nick-face ((t (:foreground ,color-fg))))
   `(erc-pal-face ((t (:foreground ,color-dark :inherit italic))))

   ;; table
   `(table-cell ((t (:foreground ,color-fg :background ,color-bg-alt))))

   ;; tab-bar and tab-line
   `(tab-bar ((t (:foreground ,color-darker :background ,color-bg-alt :box (:color ,color-bg-alt)))))
   `(tab-bar-tab ((t (:inherit tab-bar :foreground ,color-dark :background ,color-bg-alt))))
   `(tab-bar-tab-group-current ((t (:foreground ,color-fg))))
   `(tab-bar-tab-group-inactive ((t (:foreground ,color-dark))))
   `(tab-bar-tab-inactive ((t (:inherit tab-bar :foreground ,color-darker :background ,color-bg-alt))))
   `(tab-line ((t (:foreground ,color-dark :background ,color-bg-alt :box (:color ,color-bg-alt)))))
   `(tab-line-close-highlight ((t (:foreground ,color-hl))))
   `(tab-line-highlight ((t (:foreground ,color-hl))))
   `(tab-line-tab ((t (:inherit tab-line :foreground ,color-dark :background ,color-darkest))))
   `(tab-line-tab-current ((t (:inherit tab-line :foreground ,color-fg))))
   `(tab-line-tab-inactive ((t (:inherit tab-line :foreground ,color-darker :background ,color-bg))))
   `(tab-line-tab-inactive-alternate ((t (:inherit tab-line-tab-inactive))))

   ;; tex
   `(font-latex-sedate-face ((t (:foreground ,color-dark))))
   `(font-latex-math-face ((t (:inherit default))))
   `(font-latex-script-char-face ((t (:inherit font-latex-math-face))))

   ;; outline
   `(outline-1 ((t (:foreground ,color-bright :weight bold :height 1.2))))
   `(outline-2 ((t (:foreground ,color-middle :weight bold))))
   `(outline-3 ((t (:foreground ,color-middle :weight bold))))
   `(outline-4 ((t (:foreground ,color-middle :weight bold))))
   `(outline-5 ((t (:foreground ,color-middle :weight bold))))
   `(outline-6 ((t (:foreground ,color-middle :weight bold))))
   `(outline-7 ((t (:foreground ,color-middle :weight bold))))
   `(outline-8 ((t (:foreground ,color-middle :weight bold))))

   ;; org-mode
   `(org-archived ((t (:foreground ,color-dark))))
   `(org-block ((t (:foreground ,color-fg :background ,color-bg-alt :inherit fixed-pitch :extend t))))
   `(org-block-begin-line ((t (:foreground ,color-dark))))
   `(org-block-end-line ((t (:foreground ,color-dark))))
   `(org-checkbox ((t (:foreground ,color-bright :background ,color-bg-alt :weight bold :inherit fixed-pitch))))
   `(org-code ((t (:foreground ,color-middle :inherit fixed-pitch))))
   `(org-date ((t (:foreground ,color-bright))))
   `(org-date-selected ((t (:foreground ,color-bg :background ,color-bright :weight bold))))
   `(org-document-info ((t (:foreground ,color-middle))))
   `(org-document-info-keyword ((t (:foreground ,color-dark))))
   `(org-document-title ((t (:foreground ,color-middle :weight bold))))
   `(org-done ((t (:foreground ,color-blue :background ,color-bg-blue :weight normal))))
   `(org-drawer ((t (:inherit font-lock-comment-face))))
   `(org-headline-done ((t (:foreground ,color-dark))))
   `(org-hide ((t (:foreground ,color-bg))))
   `(org-latex-and-related ((t (:foreground ,color-dark :italic t))))
   `(org-link ((t (:inherit link))))
   `(org-meta-line ((t (:foreground ,color-dark))))
   `(org-mode-line-clock ((t (:background unspecified))))
   `(org-table ((t (:inherit table-cell))))
   `(org-table-header ((t (:inherit org-table :foreground ,color-middle))))
   `(org-tag ((t (:foreground ,color-dark :slant italic :weight normal))))
   `(org-todo ((t (:foreground ,color-red :background ,color-bg-red :weight normal))))
   `(org-verbatim ((t (:inherit font-lock-string-face))))

   ;; org-tree-slide
   `(org-tree-slide-header-overlay-face ((t (:inherit font-lock-comment-face :foreground unspecified :background unspecified))))

   ;; shortdoc
   `(shortdoc-heading ((t (:inherit outline-1))))

   ;; compilation
   `(compilation-column-number ((t (:foreground ,color-hl :underline t))))
   `(compilation-error ((t (:foreground ,color-red))))
   `(compilation-info ((t (:foreground ,color-bright))))
   `(compilation-line-number ((t (:foreground ,color-hl :weight bold :underline t))))
   `(compilation-mode-line-fail ((t (:foreground ,color-red))))
   `(compilation-mode-line-exit ((t (:foreground ,color-blue))))
   `(compilation-warning ((t (:foreground ,color-blue))))

   ;; whitespace
   `(whitespace-trailing ((t (:background ,color-bg-red))))
   `(whitespace-line ((t (:inherit whitespace-trailing))))
   `(whitespace-space (( t(:foreground ,color-darker))))
   `(whitespace-newline ((t (:inherit whitespace-space))))
   `(whitespace-empty ((t (:inherit whitespace-line))))

   ;; smartparens
   `(sp-pair-overlay-face ((t (:foreground ,color-bright :background ,color-bg-alt))))
   `(sp-show-pair-match-content ((t (:inherit show-paren-match-expression))))

   ;; rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,color-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,color-dark))))
   `(rainbow-delimiters-unmatched-face ((t (:inherit error))))

   ;; paren face
   `(parenthesis ((t (:inherit shadow :weight light))))

   ;; git-commit
   `(git-commit-summary ((t (:inherit default))))
   `(git-commit-comment-heading ((t (:slant italic :inherit font-lock-comment-face))))
   `(git-commit-comment-branch-local ((t (:slant italic :weight bold))))
   `(git-commit-comment-branch-remote ((t (:slant italic :weight bold))))
   `(git-commit-comment-file ((t (:foreground ,color-bright :background ,color-bg-alt))))
   `(git-commit-comment-action ((t (:weight bold :inherit font-lock-comment-face))))

   ;; magit
   `(magit-branch-local ((t (:foreground ,color-middle :weight bold))))
   `(magit-branch-remote ((t (:foreground ,color-middle :weight bold :slant italic))))
   `(magit-tag ((t (:foreground ,color-dark :background unspecified :inherit italic))))
   `(magit-hash ((t (:foreground ,color-bright))))
   `(magit-section-title ((t (:foreground ,color-fg :background unspecified))))
   `(magit-section-heading ((t (:background unspecified :foreground ,color-fg))))
   `(magit-section-heading-selection ((t (:inherit region))))
   `(magit-section-highlight ((t (:background ,color-bg-alt))))
   `(magit-item-highlight ((t (:foreground ,color-fg :background ,color-bright))))
   `(magit-log-author ((t (:foreground ,color-dark))))
   `(magit-diff-added ((t (:inherit diff-added))))
   `(magit-diffstat-added ((t (:foreground ,color-blue))))
   `(magit-diff-added-highlight ((t (:inherit magit-diff-added))))
   `(magit-diff-removed ((t (:inherit diff-removed))))
   `(magit-diffstat-removed ((t (:foreground ,color-red))))
   `(magit-diff-removed-highlight ((t (:inherit magit-diff-removed))))
   `(magit-diff-context ((t (:inherit diff-context))))
   `(magit-diff-context-highlight ((t (:foreground ,color-dark :inherit magit-section-highlight))))
   `(magit-popup-argument ((t (:inherit font-lock-function-name-face))))
   `(magit-popup-disabled-argument ((t (:inherit font-lock-comment-face))))
   `(magit-process-ok ((t (:inherit success))))
   `(magit-diff-hunk-heading ((t (:background ,color-bg :underline t))))
   `(magit-diff-hunk-heading-highlight ((t (:inherit magit-section-highlight))))
   `(magit-filename ((t (:inherit git-commit-comment-file))))

   ;; git-gutter-fringe
   `(git-gutter-fr:modified ((t (:foreground ,color-dark))))
   `(git-gutter-fr:added ((t (:foreground ,color-blue))))
   `(git-gutter-fr:deleted ((t (:foreground ,color-red))))

   ;; diff-hl
   `(diff-hl-change ((t (:foreground ,color-dark))))
   `(diff-hl-insert ((t (:foreground ,color-blue))))
   `(diff-hl-delete ((t (:foreground ,color-red))))

   ;; company
   `(company-echo ((t (:inherit company-preview))))
   `(company-echo-common ((t (:inherit company-tooltip-common))))
   `(company-preview ((t (:foreground ,color-fg))))
   `(company-preview-common ((t (:foreground ,color-fg :background unspecified))))
   `(company-tooltip-search ((t (:inherit lazy-highlight))))
   `(company-tooltip-search-selection ((t (:inherit company-tooltip-search))))
   `(company-tooltip ((t (:foreground ,color-middle :background ,color-darkest))))
   `(company-tooltip-annotation ((t (:foreground ,color-fg))))
   `(company-tooltip-annotation-selection ((t (:weight normal))))
   `(company-tooltip-common ((t (:foreground ,color-fg))))
   `(company-tooltip-common-selection ((t (:foreground ,color-middle))))
   `(company-tooltip-selection ((t (:foreground ,color-hl :background ,color-darker :weight bold :underline (:color ,color-bright)))))
   `(company-tooltip-scrollbar-thumb ((t (:background ,color-dark))))
   `(company-tooltip-scrollbar-track ((t (:background ,color-darker))))
   `(company-scrollbar-fg ((t (:inherit company-tooltip-scrollbar-thumb))))  ; obsolete
   `(company-scrollbar-bg ((t (:inherit company-tooltip-scrollbar-track))))  ; obsolete

   ;; corfu
   `(corfu-annotations ((t (:foreground ,color-fg :slant normal :inherit completions-annotations))))
   `(corfu-bar ((t (:background ,color-bright))))
   `(corfu-border ((t (:background ,color-darker))))
   `(corfu-current ((t (:inherit highlight))))
   `(corfu-default ((t (:background ,color-darkest))))
   `(corfu-deprecated ((t (:strike-through t :inherit shadow))))
   `(corfu-popupinfo ((t (:background ,color-darkest))))

   ;; flymake
   `(flymake-error ((t (:underline (:color ,color-red :style wave)))))
   `(flymake-warning ((t (:underline (:color ,color-blue :style wave)))))
   `(flymake-note ((t (:underline (:color ,color-middle :style wave)))))

   ;; flycheck
   `(flycheck-error ((t (:inherit flymake-error))))
   `(flycheck-warning ((t (:inherit flymake-warning))))
   `(flycheck-info ((t (:inherit flymake-note))))
   `(flycheck-fringe-error ((t (:inherit error))))
   `(flycheck-fringe-warning ((t (:inherit warning))))
   `(flycheck-fringe-info ((t (:inherit info))))
   `(flycheck-error-list-info ((t (:inherit flycheck-info))))
   `(flycheck-error-list-filename ((t (:foreground ,color-fg))))

   ;; lsp-mode
   `(lsp-headerline-breadcrumb-path-face ((t (:foreground ,color-dark))))
   `(lsp-headerline-breadcrumb-path-error-face ((t (:inherit error))))
   `(lsp-headerline-breadcrumb-separator-face ((t (:foreground ,color-dark))))

   ;; eglot
   `(eglot-diagnostic-tag-deprecated-face ((t (:inherit shadow :strike-through t))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:inherit flymake-warning))))
   `(eglot-mode-line ((t (:foreground ,color-fg :weight bold))))
   `(eglot-highlight-symbol-face ((t (:inherit lazy-highlight))))

   ;; csv-mode
   `(csv-separator-face ((t (:foreground ,color-middle))))

   ;; css-mode
   `(css-selector ((t (:weight bold))))
   `(css-property ((t (:inherit font-lock-builtin-face))))

   ;; web-mode
   `(web-mode-html-tag-bracket-face ((t (:inherit shadow))))
   `(web-mode-html-tag-face ((t (:weight bold :inherit shadow))))
   `(web-mode-html-attr-name-face ((t (:inherit shadow))))
   `(web-mode-css-selector-face ((t (:inherit css-selector))))
   `(web-mode-css-property-name-face ((t (:inherit css-property))))
   `(web-mode-css-color-face ((t (:foreground ,color-fg))))
   `(web-mode-current-element-highlight-face ((t (:inherit lazy-highlight))))
   `(web-mode-doctype-face ((t (:inherit shadow))))

   ;; slime
   `(slime-repl-inputed-output-face ((t (:foreground ,color-middle))))
   `(slime-repl-output-mouseover-face ((t (:foreground ,color-bright :box unspecified))))
   `(slime-repl-input-face ((t (:foreground ,color-fg))))
   `(slime-repl-prompt ((t (:inherit minibuffer-prompt))))
   `(slime-highlight-edits-face ((t (:underline (:color ,color-darker)))))
   `(slime-highlight-face ((t (:inherit highlight))))
   `(slime-error-face ((t (:inherit error))))
   `(slime-warning-face ((t (:inherit flymake-warning))))
   `(slime-style-warning-face ((t (:inherit flymake-warning))))
   `(sldb-restartable-frame-line-face ((t (:inherit link))))
   `(sldb-section-face ((t (:foreground ,color-dark :weight bold))))

   ;; sly
   `(sly-db-topline-face ((t (:weight bold))))
   `(sly-action-face ((t (:foreground ,color-bright :weight bold))))
   `(sly-mode-line ((t (:foreground ,color-middle))))
   `(sly-mrepl-prompt-face ((t (:inherit minibuffer-prompt))))
   `(sly-mrepl-output-face ((t (:foreground ,color-fg))))
   `(sly-mrepl-note-face ((t (:inherit font-lock-warning-face))))
   `(sly-style-warning-face ((t (:inherit flymake-warning))))
   `(sly-db-condition-face ((t (:foreground ,color-red :background ,color-bg-red :extend t))))
   `(sly-db-restart-face ((t (:inherit package-description))))
   `(sly-db-restart-number-face ((t (:foreground ,color-bright :weight bold))))
   `(sly-db-section-face ((t (:inherit shadow))))
   `(sly-db-frame-label-face ((t (:inherit shadow))))
   `(sly-db-frame-line-face ((t (:foreground ,color-fg))))
   `(sly-db-restartable-frame-line-face ((t (:foreground ,color-middle :weight bold))))
   `(sly-db-local-name-face ((t (:slant italic))))
   `(sly-part-button-face ((t (:foreground ,color-middle))))

   ;; geiser
   `(geiser-font-lock-repl-output ((t (:foreground ,color-middle))))
   `(geiser-font-lock-autodoc-identifier ((t (:inherit font-lock-keyword-face))))
   `(geiser-font-lock-autodoc-current-arg ((t (:inherit eldoc-highlight-function-argument))))

   ;; cider
   `(cider-result-overlay-face ((t (:background ,color-bg-alt))))
   `(cider-fringe-good-face ((t (:foreground ,color-dark))))
   `(cider-warning-highlight-face ((t (:foreground ,color-blue :background ,color-bg-blue :slant italic))))
   `(cider-test-error-face ((t (:inherit font-lock-warning-face))))
   `(cider-test-failure-face ((t (:inherit font-lock-warning-face))))
   `(cider-test-success-face ((t (:foreground ,color-middle :weight bold))))
   `(cider-repl-prompt-face ((t (:inherit minibuffer-prompt))))
   `(cider-repl-stdout-face ((t (:foreground ,color-fg))))
   `(cider-repl-stderr-face ((t (:inherit font-lock-warning-face))))
   `(cider-stacktrace-error-class-face ((t (:inherit font-lock-warning-face))))
   `(cider-error-highlight-face ((t (:inherit error))))

   ;; clojure-mode
   `(clojure-keyword-face ((t (:inherit font-lock-builtin-face))))

   ;; tuareg
   `(tuareg-font-lock-constructor-face ((t (:foreground ,color-middle))))
   `(tuareg-font-double-semicolon-face ((t (:inherit tuareg-font-lock-interactive-directive-face))))
   `(tuareg-font-double-colon-face ((t (:inherit tuareg-font-lock-operator-face))))
   `(tuareg-font-lock-error-face ((t (:inherit error))))
   `(tuareg-font-lock-governing-face ((t (:foreground ,color-bright :weight bold))))
   `(tuareg-font-lock-label-face ((t (:inherit shadow))))
   `(tuareg-font-lock-interactive-output-face ((t (:foreground ,color-bright))))
   `(tuareg-font-lock-interactive-error-face ((t (:inherit font-lock-warning-face))))
   `(tuareg-font-lock-interactive-directive-face ((t (:foreground ,color-middle))))
   `(tuareg-font-lock-line-number-face ((t (:inherit linum))))
   `(tuareg-font-lock-module-face ((t (:inherit shadow))))
   `(tuareg-font-lock-operator-face ((t (:inherit font-lock-operator-face))))

   ;; caml
   `(ocaml-help-face ((t (:inherit lazy-highlight))))

   ;; merlin
   `(merlin-compilation-error-face ((t (:inherit error))))
   `(merlin-type-face ((t (:inherit lazy-highlight))))

   ;; merlin-eldoc
   `(merlin-eldoc-occurrences-face ((t (:inherit lazy-highlight))))

   ;; utop
   `(utop-frozen ((t (:foreground ,color-fg))))
   `(utop-prompt ((t (:inherit minibuffer-prompt))))
   `(utop-error  ((t (:inherit error))))
   `(utop-stderr ((t (:inherit font-lock-warning-face))))
   `(utop-stdout ((t (:inherit tuareg-font-lock-interactive-output-face))))

   ;; haskell-mode
   `(haskell-operator-face ((t (:inherit font-lock-operator-face))))
   `(haskell-warning-face ((t (:inherit flymake-warning))))
   `(haskell-interactive-face-compile-warning ((t (:inherit compilation-warning))))

   ;; selectrum
   `(selectrum-mouse-highlight ((t (:background unspecified :underline t :extend t))))
   `(selectrum-prescient-primary-highlight ((t (:inherit completions-common-part))))

   ;; marginalia
   `(marginalia-archive ((t (:inherit unspecified))))
   `(marginalia-key ((t (:inherit unspecified))))
   `(marginalia-number ((t (:inherit unspecified))))
   `(marginalia-file-priv-dir ((t (:weight bold))))
   `(marginalia-file-priv-read ((t (:foreground ,color-fg))))
   `(marginalia-file-priv-write ((t (:foreground ,color-red))))
   `(marginalia-file-priv-exec ((t (:foreground ,color-blue))))

   ;; consult
   `(consult-preview-line ((t (:inherit highlight))))
   `(consult-preview-cursor ((t (:background ,color-bg :underline unspecified))))

   ;; helm
   `(helm-candidate-number ((t (:foreground ,color-dark :background unspecified))))
   `(helm-command-active-mode ((t (:foreground ,color-red))))
   `(helm-source-header ((t (:inherit font-lock-comment-face :background unspecified :foreground unspecified))))
   `(helm-selection ((t (:background ,color-bg-alt :inherit highlight))))
   `(helm-selection-line ((t ())))
   `(helm-separator ((t (:foreground ,color-darker))))
   `(helm-prefarg ((t (:foreground ,color-dark))))
   `(helm-ff-file ((t (:foreground ,color-fg))))
   `(helm-ff-directory ((t (:inherit dired-directory :foreground unspecified))))
   `(helm-ff-executable ((t (:inherit eshell-ls-executable :foreground unspecified))))
   `(helm-ff-file-extension ((t (:foreground unspecified :background unspecified))))
   `(helm-ff-invalid-symlink ((t (:slant italic :inherit error))))
   `(helm-ff-symlink ((t (:inherit dired-symlink))))
   `(helm-ff-prefix ((t (:background unspecified))))
   `(helm-ff-dotted-directory ((t (:background unspecified :foreground ,color-middle))))
   `(helm-grep-cmd-line ((t ())))
   `(helm-grep-file ((t (:background ,color-bg-blue))))
   `(helm-grep-finish ((t (:inherit helm-grep-file))))
   `(helm-grep-lineno ((t (:inherit line-number))))
   `(helm-grep-match ((t (:inherit helm-match))))
   `(helm-M-x-key ((t (:inherit help-key-binding))))
   `(helm-M-x-short-doc ((t (:inherit font-lock-doc-face))))
   `(helm-buffer-file ((t (:foreground ,color-fg))))
   `(helm-buffer-archive ((t (:inherit eshell-ls-archive))))
   `(helm-buffer-directory ((t (:inherit dired-directory))))
   `(helm-buffer-not-saved ((t (:foreground ,color-red :underline (:color ,color-red :style wave)))))
   `(helm-buffer-saved-out ((t (:inherit helm-buffer-not-saved))))
   `(helm-buffer-modified ((t (:foreground ,color-blue :underline (:color ,color-blue :style wave)))))
   `(helm-buffer-process ((t (:foreground ,color-dark))))
   `(helm-buffer-size ((t (:foreground ,color-dark))))
   `(helm-match ((t (:inherit match))))
   `(helm-match-item ((t (:foreground ,color-hl :underline t))))
   `(helm-bookmark-addressbook ((t (:foreground ,color-fg))))
   `(helm-bookmark-directory ((t (:inherit dired-directory))))
   `(helm-bookmark-file ((t (:foreground ,color-fg))))
   `(helm-bookmark-file-not-found ((t (:foreground ,color-fg :slant italic))))
   `(helm-bookmark-gnus ((t (:foreground ,color-fg))))
   `(helm-bookmark-info ((t (:foreground ,color-fg))))
   `(helm-bookmark-man ((t (:foreground ,color-fg))))
   `(helm-bookmark-w3m ((t (:foreground ,color-fg))))

   ;; adoc-mode
   `(markup-code-face ((t (:inherit markup-verbatim-face))))
   `(markup-complex-replacement-face ((t (:background ,color-hl :foreground ,color-fg))))
   `(markup-gen-face ((t (:inherit default :foreground unspecified))))
   `(markup-list-face ((t (:weight bold))))
   `(markup-meta-face ((t (:height 1.0 :foreground ,color-dark :family unspecified))))
   `(markup-meta-hide-face ((t (:height 1.0 :foreground ,color-bright))))
   `(markup-passthrough-face ((t (:inherit markup-dark))))
   `(markup-reference-face ((t (:underline unspecified :foreground ,color-dark))))
   `(markup-replacement-face ((t (:family unspecified :foreground ,color-dark))))
   `(markup-secondary-text-face ((t (:height 1.0 :foreground ,color-dark))))
   `(markup-table-cell-face ((t (:inherit table-cell))))
   `(markup-title-0-face ((t (:height 1.2 :inherit markup-gen-face))))
   `(markup-title-1-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-2-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-3-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-4-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-5-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-typewriter-face ((t (:inherit unspecified))))
   `(markup-verbatim-face ((t (:foreground ,color-dark :inherit fixed-pitch-serif))))

   ;; highlight-indent-guides
   `(highlight-indent-guides-odd-face ((t (:background ,color-bg-alt))))
   `(highlight-indent-guides-even-face ((t (:background unspecified))))

   ;; notmuch
   `(notmuch-search-unread-face ((t (:foreground ,color-bright))))
   `(notmuch-tag-face ((t (:foreground ,color-dark))))
   `(notmuch-tree-match-author-face ((t (:foreground ,color-middle))))
   `(notmuch-tree-no-match-face ((t (:foreground ,color-dark))))
   `(notmuch-tree-match-tag-face ((t (:inherit notmuch-tree-match-author-face))))
   `(notmuch-tag-unread-face ((t (:foreground ,color-bg :background ,color-dark))))
   `(notmuch-message-summary-face ((t (:foreground ,color-dark))))

   ;; switch-window
   `(switch-window-background ((t (:foreground ,color-darker))))
   `(switch-window-label ((t (:foreground ,color-bright :height 3.0))))

   ;; telega
   `(telega-msg-heading ((t (:foreground ,color-dark :background unspecified :inherit unspecified))))
   `(telega-msg-inline-reply ((t (:foreground ,color-bright :inherit unspecified))))
   `(telega-entity-type-texturl ((t (:inherit unspecified :foreground ,color-dark))))

   ;; beancount
   `(beancount-date ((t (:inherit italic :foreground unspecified))))
   `(beancount-account ((t (:inherit default))))

   ;; w3m
   `(w3m-anchor ((t (:inherit link))))
   `(w3m-arrived-anchor ((t (:inherit link-visited))))
   `(w3m-current-anchor ((t (:inherit highlight))))
   `(w3m-error ((t (:inherit error))))
   `(w3m-header-line-content ((t (:inherit header-line))))
   `(w3m-header-line-background ((t (:inherit header-line))))
   `(w3m-header-line-title ((t (:inherit header-line))))
   `(w3m-form ((t (:inherit widget-field))))
   `(w3m-form-button ((t (:inherit custom-button))))
   `(w3m-form-button-mouse ((t (:inherit custom-button-mouse))))
   `(w3m-form-button-pressed ((t (:inherit custom-button-pressed))))

   ;; elfeed
   `(elfeed-search-date-face ((t (:foreground ,color-dark))))
   `(elfeed-search-title-face ((t (:inherit default))))
   `(elfeed-search-unread-title-face ((t (:foreground ,color-middle))))
   `(elfeed-search-feed-face ((t (:foreground ,color-dark))))
   `(elfeed-search-tag-face ((t (:inherit default))))
   `(elfeed-search-last-update-face ((t (:inherit font-lock-comment-face))))
   `(elfeed-search-unread-count-face ((t (:weight bold))))
   `(elfeed-search-filter-face ((t (:foreground ,color-bright))))
   `(elfeed-log-debug-level-face ((t (:foreground ,color-blue))))
   `(elfeed-log-error-level-face ((t (:inherit error))))
   `(elfeed-log-info-level-face ((t (:foreground ,color-blue))))
   `(elfeed-log-warn-level-face ((t (:inherit warning))))

   ;; rg / ripgrep
   `(rg-file-tag-face ((t (:foreground ,color-bright))))
   `(rg-filename-face ((t (:foreground ,color-bright :weight bold))))
   `(rg-line-number-face ((t (:inherit line-number))))
   `(rg-match-face ((t (:underline t :inherit match))))

   ;; wgrep
   `(wgrep-face ((t (:foreground ,color-red :background ,color-bg-red))))
   `(wgrep-file-face ((t (:background ,color-bg-blue))))
   `(wgrep-done-face ((t (:inherit wgrep-file-face))))

   ;; orderless
   `(orderless-match-face-0 ((t (:inherit match))))
   `(orderless-match-face-1 ((t (:inherit match :foreground ,color-middle))))
   `(orderless-match-face-2 ((t (:inherit match :foreground ,color-middle))))
   `(orderless-match-face-3 ((t (:inherit match :foreground ,color-middle))))

   ;; yasnippet
   `(yas-field-highlight-face ((t (:inherit lazy-highlight))))

   ;; hl-todo
   `(hl-todo ((t (:inherit font-lock-comment-face))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'the-matrix)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; the-matrix-theme.el ends here
