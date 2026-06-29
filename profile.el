;;; profile.el --- Private life profile  -*- lexical-binding: t; -*-

(setq my/profile-name 'life)

(setq my/profile-data
      '(:org-note-dir "~/note/org-note"
        :gpg-recipient "398878DEB89103E1AAF33653DF36ED6081BD3962"
	 :org-attach-dir-aliases
         (("nas-attach" . "/Volumes/main-data/org-big-attachments/files"))
        :features (blog)))

(load (expand-file-name "topics.el" (file-name-directory load-file-name)) nil t)

;;; profile.el ends here
