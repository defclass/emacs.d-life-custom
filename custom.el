;;; -*- lexical-binding: t -*-

;;; custom.el --- Compatibility shim for older emacs.d checkouts.

(let ((dir (file-name-directory (or load-file-name buffer-file-name))))
  (load (expand-file-name "profile.el" dir) nil t)
  (load (expand-file-name "emacs-custom.el" dir) nil t))

(when (fboundp 'my/profile-register-topics)
  (my/profile-register-topics))
(when (fboundp 'my/profile-enable-features)
  (my/profile-enable-features))
