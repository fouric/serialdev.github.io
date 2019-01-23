
(setq cols '("Title(URL)" "Author" "language" "Book" "Blog/WebBased" "Journal"
 "Theory" "Implementation" "Free" "End-to-End" "Notes"))


(setq low-level-list '(

("[What Every Computer Scientist Should Know About Floating-Point Arithmetic](https://docs.oracle.com/cd/E19957-01/806-3568/ncg_goldberg.html )" "David Goldberg" "--" "✖" "✖" "✔" "✔" "✖" "✔" "✖" "--")
("[Zen of Code Optimization: The Ultimate Guide to Writing Software That Pushes PCs to the Limit Paperback – December 8, 1994](https://www.amazon.com/Zen-Code-Optimization-Ultimate-Software/dp/1883577039 )" "Michael Abrash " "ASM/C" "✔" "✖" "✖" "✔" "✔" "✖" "✖" "--")
("[Michael Abrash's Graphics Programming Black Book (Special Edition) Paperback – July 1, 1997](https://www.amazon.com/gp/product/1576101746/ref=dbs_a_def_rwt_bibl_vppi_i0 )" "Michael Abrash " "ASM/C" "✔" "✖" "✖" "✖" "✔" "✖" "✖" "--")
("[Programming from the Ground Up](https://download-mirror.savannah.gnu.org/releases/pgubook/ProgrammingGroundUp-1-0-booksize.pdf )" "Jonathan Bartlett" "ASM/C" "✔" "✖" "✖" "✔" "✔" "✔" "✔" "--")
("[Assemblers And Loaders.](http://www.davidsalomon.name/assem.advertis/AssemAd.html )" "David Salomon" "ASM" "✔" "✖" "✖" "✔" "✔" "✔" "✖" "--")
("[Linkers And Loaders.](https://www.amazon.com/Linkers-Kaufmann-Software-Engineering-Programming/dp/1558604960 )" "John R. Levine" "ASM/C" "✔" "✖" "✖" "✔" "✖" "✖" "✖" "--")
("[The Assembler Developer's Kit](http://www.plantation-productions.com/Webster/RollYourOwn/index.html )" "Unknown" "ASM" "✔" "✔" "✖" "✔" "✔" "✔" "✔" "--")
("[An Introduction to the C Programming Language and Software Design](http://www-personal.acfr.usyd.edu.au/tbailey/ctext/ctext.pdf )" "Tim Bailey" "C" "✔" "✖" "✖" "✔" "✔" "✔" "✖" "--")
("[Low-Level Programming: C, Assembly, and Program Execution on Intel® 64 Architecture](https://www.amazon.co.uk/dp/1484224027/?coliid=IR7XN54ZV5YKB&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Igor Zhirkov" "ASM/C" "✔" "✖" "✖" "✔" "✔" "✖" "✖" "--")
("[C in a Nutshell](https://www.amazon.co.uk/dp/1491904755/?coliid=I1T1X1PK25Q277&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Peter Prinz, Tony Crawford" "C" "✔" "✖" "✖" "✖" "✔" "✖" "✖" "--")
("[Intermediate C Programming](https://www.amazon.co.uk/dp/1498711634/?coliid=I1PGHGBFAZU8JS&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Yung-Hsiang Lu" "C" "✔" "✖" "✖" "✖" "✔" "✖" "✖" "--")
("[Comparing Compiler Optimizations](https://blog.regehr.org/archives/320 )" "John Regehr" "ASM" "✖" "✔" "✖" "✖" "✖" "✔" "✖" "--")
("[Hacker's Delight](https://www.hackersdelight.org/)" "Henry S. Warren" "C" "✔" "✖" "✖" "✔" "✔" "✖" "✖" "--")
("[Art of Assembly Language, 2nd Edition](https://nostarch.com/assembly2.htm )" "Randall Hyde" "ASM" "✔" "✖" "✖" "✖" "✔" "✖" "✖" "--")
;; ("" "miscellaneous" "--" "b✖✔" "bl✖✖✔" "th✖✔" "im✖✖✔" "f✖✔" "ee✖✔" "✖✔" "--")

))


(defun concat-string-list (list)
  "A non-recursive function that concatenates a list of strings."
  (if (listp list)
      (with-output-to-string (s)
         (dolist (item list)
           (if (stringp item)
             (format s "~a" item))))))


(defun init-html()
  "
<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <meta charset=\"utf-8\">
    <title>title</title>
    <!-- minify -->
    <link href=\"https://unpkg.com/nes.css@1.0.0/css/nes.min.css\" rel=\"stylesheet\" />
    <link href=\"https://fonts.googleapis.com/css?family=Press+Start+2P\" rel=\"stylesheet\">
    <!-- <link rel=\"stylesheet\" href=\"style.css\"> -->
    <script src=\"script.js\"></script>
  </head>")

(defun init-body()
"
  <body>
"
  )

(defun end-token(data)
(format nil "
  </~a>
" data))

(defun end-html()
"
</html>
"
)

(defun init-container-with-title(title)
(format nil "

    <section class=\"nes-container with-title\">
      <h2 class=\"title\">~a</h2>
" title))

(defun end-container()
  "
</section>
"
  )

(defun init-table()
"      <div class=\"nes-table-responsive\">
        <table class=\"nes-table is-bordered is-centered\">
"
)

(defun init-table-head()
"
          <thead>
")


(defun init-table-head-item()
"
         <th>
")

(defun gen-table-head-item(data)
  (concatenate 'string
	       (init-table-head-item)
	       (format nil " ~a" data)
	       (end-token "th")
))

(defun loop-table-head-items(items)
  (concat-string-list
   (loop for current in items
     collect (gen-table-head-item current)))
)


(defun init-table-body()
"
          <tbody>
")


(defun init-table-body-item()
"
         <td>
")

(defun gen-table-body-item(data)
  (concatenate 'string
	       (init-table-body-item)
	       (format nil " ~a" data)
	       (end-token "td")
))

(defun loop-table-body-items(items)
  (concat-string-list
   (loop for current in items
     collect (gen-table-body-item current)))
)




(setq cwd (sb-posix:getcwd))



(defun write-to-html (name data)
(with-open-file (md  (concatenate 'string cwd (format nil "/~a.html" name))
                     :direction :output
                     :if-exists :supersede
                     :if-does-not-exist :create))

(with-open-file (md  (concatenate 'string cwd (format nil "/~a.html" name))
		       :direction :output
		       :if-exists :append
		       :if-does-not-exist :create)
  (format md "~a" data)))



(write-to-html "tested" 

(concatenate 'string
	     (init-html )
	     (init-body )
	     (init-container-with-title "table")
	     (init-table)
	     (init-table-head)
	     (loop-table-head-items cols)

	     (init-table-body)
	     (loop-table-body-items low-level-list)
	     (end-token "tbody")
	     (end-token "thead")
	     (end-token "table")
	     (end-container)
	     (end-token "body" )
	     (end-token "html" )
	     )

)


