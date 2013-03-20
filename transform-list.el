;; Given a list, iterate over each element, transforming it and writing the
;; results to a new buffer: *Results*
;;
;; Useful when, for example, someone gives you a list of GUIDs and wants
;; an SQL select statement for each GUID
(let ((my-list '("Foo" "Bar" "Baz"))
      (buff "*Results*")
      (cur nil))
  (switch-to-buffer buff)
  (erase-buffer)
  (while my-list
    (setq cur (car my-list))
    (insert (concat "-- " cur "\n"))
    (insert (concat "Hello: " cur "\n")) 
    (setq my-list (cdr my-list)))
  (insert "\n")
  (goto-char (point-min))
  )
