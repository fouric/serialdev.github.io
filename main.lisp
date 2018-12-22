
(defun concatString (list)
  "A non-recursive function that concatenates a list of strings."
  (if (listp list)
      (with-output-to-string (s)
         (dolist (item list)
           (if (stringp item)
             (format s "~a" item))))))

(setq cols '("Title(URL)" "Author" "Topic" "Book" "Blog" "Theory"
 "Implementation" "Free" "End-To-End"))


(setq entry-list '(
("[Stackoverflow Learning to write a compiler](https://stackoverflow.com/questions/1669/learning-to-write-a-compiler)" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")
		   
("[Programming Languages: Application and Interpretation Copyright © 2003-07](http://cs.brown.edu/~sk/Publications/Books/ProgLangs/2007-04-26/ )" "Shriram Krishnamurthi" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("[Essentials of Programming Languages - Third Ed.  -- 1st ed alone shows how to turn an interpreter into a continuation-based compiler.](https://karczmarczuk.users.greyc.fr/TEACH/Doc/EssProgLan.pdf)" "Daniel P. Friedman & Mitchell Wand" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("" "miscellaneous" "compilers" "✔" "✖" "✔" "✔" "✖" "✔")		   
("[Stackoverflow compilers](www.hhh.com)" "miscellaneous"  "compilers" "t" "t" "t" "t" "t" "t"  "t")
("[Programming Language Concepts for Software Developers Peter Sestoft IT University of Copenhagen, Denmark](http://web.archive.org/web/20120523194304/https://www.itu.dk/courses/BPRD/E2010/plcsd-0_50.pdf )" "miscellaneous"  "compilers" "t" "t" "t" "t" "t" "t"  "t")
))

(setq cwd (sb-posix:getcwd))

(with-open-file (md  (concatenate 'string cwd "/README.md")
                     :direction :output
                     :if-exists :supersede
                     :if-does-not-exist :create)


(let ((max-length 0))
  (loop for entry in entry-list
     do (loop for i in entry do(setq max-length (if (< max-length  (length  i))
			     (length i )(eval max-length)))
))
(setq max-length (+ max-length 2))

  (format md (format nil "|~~~:@<~A~>:@<~~A~~>|" (- max-length 2)) (car cols))

  (loop for current in (cdr cols)
  do (progn

  (format md (format nil "~~~:@<~A~>:@<~~A~~>|" (- max-length 1)) current)))

  (format md "~%")
  (format md "|~v{~A~:*~}:|" (- max-length 3) '("-"))
    (loop for current in (cdr cols)
    do (progn
    (format md ":~v{~A~:*~}:|" (- max-length 3) '("-"))))



(loop for entry in entry-list do 
  (progn(
  format md "~%")
  (format md (format nil "|~~~:@<~A~>:@<~~A~~>|" (- max-length 2)) (car entry))

    (loop for i in (cdr entry) do
  (format md (format nil "~~~:@<~A~>:@<~~A~~>|" (- max-length 1)) i)))
)

))






