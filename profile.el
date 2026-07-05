;;; profile.el --- Private life profile  -*- lexical-binding: t; -*-

(setq my/profile-name 'life)
(setq my/profile-data nil)

(let* ((directory (file-name-directory load-file-name))
       (profiles-directory (expand-file-name "profiles" directory))
       (platform-file
        (pcase system-type
          ('darwin "macos.el")
          ('windows-nt "windows.el")
          (_ nil))))
  (load (expand-file-name "common.el" profiles-directory) nil t)
  (when platform-file
    (load (expand-file-name platform-file profiles-directory) nil t)))

(load (expand-file-name "topics.el" (file-name-directory load-file-name)) nil t)

;;; profile.el ends here
