;;; macos.el --- macOS private profile values  -*- lexical-binding: t; -*-

(my/profile-merge-data
 :org-note-dir "~/note/org-note"
 :org-attach-dir-aliases
 '(("nas-attach" . "/Volumes/main-data/org-big-attachments/files"))
 :org-video-mpv-executable
 "/Applications/mpv.app/Contents/MacOS/mpv"
 :org-video-vlc-executable
 "/Applications/VLC.app/Contents/MacOS/VLC")

;;; macos.el ends here
