
(defun concatString (list)
  "A non-recursive function that concatenates a list of strings."
  (if (listp list)
      (with-output-to-string (s)
         (dolist (item list)
           (if (stringp item)
             (format s "~a" item))))))

(setq cols '("Title(URL)" "Author" "language" "Book" "Blog" "Theory"
 "Implementation" "Free" "End-To-End"))


(setq low-level-list '(

("[What Every Computer Scientist Should Know About Floating-Point Arithmetic](https://docs.oracle.com/cd/E19957-01/806-3568/ncg_goldberg.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Zen of Code Optimization: The Ultimate Guide to Writing Software That Pushes PCs to the Limit Paperback – December 8, 1994](https://www.amazon.com/Zen-Code-Optimization-Ultimate-Software/dp/1883577039 )" "Michael Abrash " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Michael Abrash's Graphics Programming Black Book (Special Edition) Paperback – July 1, 1997](https://www.amazon.com/gp/product/1576101746/ref=dbs_a_def_rwt_bibl_vppi_i0 )" "Michael Abrash " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming from the Ground Up](https://download-mirror.savannah.gnu.org/releases/pgubook/ProgrammingGroundUp-1-0-booksize.pdf )" "Jonathan Bartlett" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Assemblers And Loaders.](http://www.davidsalomon.name/assem.advertis/AssemAd.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Assembler Developer's Kit](http://www.plantation-productions.com/Webster/RollYourOwn/index.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[An Introduction to the C Programming Language and Software Design Tim Bailey](http://www-personal.acfr.usyd.edu.au/tbailey/ctext/ctext.pdf )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Low-Level Programming: C, Assembly, and Program Execution on Intel® 64 Architecture](https://www.amazon.co.uk/dp/1484224027/?coliid=IR7XN54ZV5YKB&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[C in a Nutshell](https://www.amazon.co.uk/dp/1491904755/?coliid=I1T1X1PK25Q277&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Intermediate C Programming](https://www.amazon.co.uk/dp/1498711634/?coliid=I1PGHGBFAZU8JS&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Comparing Compiler Optimizations](https://blog.regehr.org/archives/320 )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Hacker's Delight](https://www.hackersdelight.org/)" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Art of Assembly Language, 2nd Edition](https://nostarch.com/assembly2.htm )" "Randall Hyde" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))


(setq compiler-list '(
("[Stackoverflow Learning to write a compiler](https://stackoverflow.com/questions/1669/learning-to-write-a-compiler)" "miscellaneous"   "--" "✔" "✖" "✔" "✔" "✖" "✔")
("[Programming Languages: Application and Interpretation Copyright © 2003-07](http://cs.brown.edu/~sk/Publications/Books/ProgLangs/2007-04-26/ )" "Shriram Krishnamurthi"   "--" "✔" "✖" "✔" "✔" "✖" "✔" )
("[Essentials of Programming Languages - Third Ed.  -- 1st ed alone shows how to turn an interpreter into a continuation-based compiler.](https://karczmarczuk.users.greyc.fr/TEACH/Doc/EssProgLan.pdf)" "Daniel P. Friedman & Mitchell Wand"   "--"  "✔" "✖" "✔" "✔" "✖" "✔" )
("[Constraint Programming Languages Their Specification and Generation Paperback – July 1, 1987](https://www.amazon.com/Constraint-Programming-Languages-Specification-Addison-Wesley/dp/0201062437)" "--"   "--"  "✔" "✖" "✔" "✖" "✔" "✔")
("[Programming Language Concepts for Software Developers Peter Sestoft IT University of Copenhagen, Denmark](http://web.archive.org/web/20120523194304/https://www.itu.dk/courses/BPRD/E2010/plcsd-0_50.pdf )" "miscellaneous"   "F#" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Basics of Compiler Design](http://hjemmesider.diku.dk/~torbenm/Basics/index.html )" "Torben Ægidius Mogensen"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Basics of Compiler Design ](http://web.archive.org/web/20150216163815/http://www.diku.dk:80/hjemmesider/ansatte/torbenm/Basics/basics_lulu2.pdf )" "Torben Ægidius Mogensen"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Build Your Own Lisp](http://www.buildyourownlisp.com/ )" "miscellaneous"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Compilers and Language Design A free online textbook ](https://www3.nd.edu/~dthain/compilerbook/ )" "Douglas Thain"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compiler Building Tutorial Let’s Build a Compiler](http://web.archive.org/web/20180107011717/https://www.stack.nl/~marcov/compiler.pdf )" "Jack W. Crenshaw"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(END-TO-END) A Problem Course in Compilation: From Python to x86 Assembly Draft, November 6, 2009 ](http://ecee.colorado.edu/ecen4553/fall09/notes.pdf )" "Jeremy G. Siek"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing Compilers and Interpreters: an applied approach using c++  2nd Edition](https://www.amazon.com/gp/product/0471113530/ref=dbs_a_def_rwt_hsch_vapi_taft_p1_i1 )" "Ronald Mak"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game Scripting Mastery (Premier Press Game Development) Paperback – December 18, 2002 ](https://www.amazon.com/dp/1931841578/?coliid=I2P4392B5V20D&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Alex Varanese"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Crafting a Compiler with C 1st Edition](https://www.amazon.co.uk/dp/0805321667/?coliid=I2MYD61XYHVXBE&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Charles N. Fischer"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Advanced Compiler Design and Implementation 1st Edition](https://www.amazon.com/dp/1558603204/?coliid=I1BVDU14NHT42B&colid=2R5QE46GC1OLG&psc=0 )" "Steven Muchnick"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Art of Compiler Design: Theory and Practice 1st Edition](https://www.amazon.com/dp/0130481904/?coliid=IRMA7JUL1R31Z&colid=2R5QE46GC1OLG&psc=0 )" "Thomas Pittman"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Retargetable C Compiler: Design and Implementation 1st Edition](https://www.amazon.com/dp/0805316701/?coliid=I1ZRS3G4LXERSS&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "David R. Hanson"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Engineering: A Compiler 2nd Edition](https://www.amazon.com/Engineering-Compiler-Keith-Cooper/dp/012088478X/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=012088478X&pd_rd_r=e94b7197-f57e-11e8-b278-c53c231f3748&pd_rd_w=7Id0d&pd_rd_wg=TBGQl&pf_rd_i=desktop-dp-sims&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=7d5d9c3c-5e01-44ac-97fd-261afd40b865&pf_rd_r=7RCKZPFY2WKQHEA9J1EA&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=7RCKZPFY2WKQHEA9J1EA )" "Keith Cooper"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Anatomy of LISP](https://www.amazon.co.uk/dp/007001115X/?coliid=II91SGU5B6I5K&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Let Over Lambda Paperback – April 2, 2008](https://www.amazon.com/Let-Over-Lambda-Doug-Hoyte/dp/1435712757/ref=pd_sbs_14_2?_encoding=UTF8&pd_rd_i=1435712757&pd_rd_r=e94b7197-f57e-11e8-b278-c53c231f3748&pd_rd_w=7Id0d&pd_rd_wg=TBGQl&pf_rd_i=desktop-dp-sims&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=7d5d9c3c-5e01-44ac-97fd-261afd40b865&pf_rd_r=7RCKZPFY2WKQHEA9J1EA&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=7RCKZPFY2WKQHEA9J1EA )" "Doug Hoyte"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming Language Fundamentals by Example 1st Edition ](https://www.crcpress.com/Programming-Language-Fundamentals-by-Example/Stevenson/p/book/9780849370168 )" "D.E. Stevenson"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Compiling Techniques: A First Course Using ANSI C, Lex, and Yacc (The McGraw-Hill International Series in Software Engineering) Subsequent Edition](https://www.amazon.com/dp/007709221X/?coliid=I1MK808TANX7RJ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "J. P. Bennett"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming Language Pragmatics 4th Edition ](https://www.amazon.com/dp/0124104096/?coliid=I3JQ8YC6WIHOZN&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Michael L. Scott"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Lisp in Small Pieces](https://www.amazon.co.uk/Lisp-Small-Pieces-Christian-Queinnec/dp/0521545668/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=0521545668&pd_rd_r=c5e6dcc4-f545-11e8-8dbd-79b0bd51dd1a&pd_rd_w=IAx2d&pd_rd_wg=a0PaB&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=R7A7G6ATVM6K72Y4ZNT4&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=R7A7G6ATVM6K72Y4ZNT4 )" "Christian Queinnec"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Modern Compiler Implementation ML or JAVA or C - ©1998](https://news.ycombinator.com/item?id=1608129 )" "Andrew W. Appel "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Trustworthy Compilers 1st Edition --- discusses pragmatic ways for how you can increase confidence that (a) you implemented it correctly (b) the users of your compiler trust the code does what it says it does [such as good error messages essential to a compiler for an IDE] ](https://www.amazon.com/Trustworthy-Compilers-Vladimir-Safonov/dp/0470500956 )" "Vladimir O. Safonov"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Yacc is dead ](https://arxiv.org/pdf/1010.5023.pdf )" "Matthew Might & David Darais"   "C" "✖" "✔" "th✔" "im✖" "f✔" "ee✔")
("[A Nanopass Framework for Compiler Education∗](https://www.cs.indiana.edu/~dyb/pubs/nano-jfp.pdf )" "Dipanwita Sarkar"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Parsing with Derivatives A Functional Pearl --- Parsing with derivatives http://matt.might.net/papers/reviews/esop2010-derivatives.txt ](http://matt.might.net/papers/might2011derivatives.pdf )" "Matthew Might David & Darais Daniel Spiewak"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compiling with Continuations Revised ed. Edition](https://www.amazon.com/dp/052103311X/?coliid=I35C7WN5A5H3JH&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Andrew W. Appel "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Building an Optimizing Compiler](https://www.amazon.co.uk/dp/155558179X/?coliid=I26PLVO7J1ZZDI&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compiling Algorithms for Heterogeneous Systems (Synthesis Lectures on Computer Architecture)](https://www.amazon.co.uk/dp/162705961X/?coliid=I1PG6MER9Z22WW&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compiler Construction](http://www.ethoberon.ethz.ch/WirthPubl/CBEAll.pdf )" "Niklaus Wirth "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compiler Construction (International Computer Science Series) Paperback – June 1, 1996](https://www.amazon.com/Compiler-Construction-International-Computer-Science/dp/0201403536 )" "Niklaus Wirth"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compiler design in C](https://www.amazon.com/dp/0131550454/?coliid=I1KWTMHXDZ51VM&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Allen I Holub "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Project Oberon: The Design of an Operating System and Compiler (Acm Press Books) Hardcover – November 1, 1992](https://www.amazon.com/dp/0201544288/?coliid=I23KT6PHG7REBB&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Niklaus Wirth "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Advanced Compiler Design and Implementation 1st Edition --- Great book. Must read if you're serious about optimizations.](https://www.amazon.com/Advanced-Compiler-Design-Implementation-Muchnick/dp/1558603204 )" "Steven Muchnick "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Building-Optimizing-Compiler – January 12, 1998](https://www.amazon.com/Building-Optimizing-Compiler-Bob-Morgan/dp/155558179X )" "Bob Morgan"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Parsing Techniques: A Practical Guide (Monographs in Computer Science) 2nd ed. 2008 Edition](https://www.amazon.com/Parsing-Techniques-Practical-Monographs-Computer/dp/1441919015)" "Dick Grune  (Author), Ceriel J.H. Jacobs (Contributor)"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compilers Coursebook](http://spivey.oriel.ox.ac.uk/wiki2/files/compilers/book.pdf )" "Mike Spivey"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Modern Compiler Design - Second Edition](https://dickgrune.com/Books/MCD_2nd_Edition/)" "Dick Grune, Kees van Reeuwijk, Henri E. Bal, Ceriel J.H. Jacobs, and Koen G. Langendoen"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Architecture: A Quantitative Approach, 4th Edition --- good Computer Architecture books cover a quite a bit about the basic optimizations of a modern compiler.](https://www.amazon.com/Computer-Architecture-Quantitative-Approach-4th-ebook/dp/B07BCV898J )" "Hennessy and Patterson"   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[RABBIT: A Compiler for SCHEME](https://dspace.mit.edu/handle/1721.1/6913 )" "Steele, Guy Lewis, Jr."   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[ORBIT: An Optimizing Compiler for Scheme](http://people.csail.mit.edu/riastradh/t/adams86orbit.pdf )" " David Kranz*, "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Threaded Interpretive Languages: Their Design and Implementation 1St Edition Edition  ](https://www.amazon.com/Threaded-Interpretive-Languages-Design-Implementation/dp/007038360X )" "R. G. Loeliger "   "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[An Incremental Approach to Compiler Construction](http://web.archive.org/web/20100615153619/http://scheme2006.cs.uchicago.edu/11-ghuloum.pdf )" "Abdulaziz Ghuloum" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The art of the interpreter](http://web.archive.org/web/20170706132130/ftp://publications.ai.mit.edu/ai-publications/pdf/AIM-453.pdf )" "Guy Steele & Gerald Sussman" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
))

(setq het-comp-list '(

("[CUDA for Engineers: An Introduction to High-Performance Parallel Computing](https://www.amazon.co.uk/dp/013417741X/?coliid=I1GIDMG183GAHW&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming for Hybrid Multi/Manycore MPP Systems (Chapman & Hall/CRC Computational Science)](https://www.amazon.co.uk/dp/1439873712/?coliid=IEW6C7WNDQEEJ&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Design of FPGA-Based Computing Systems with OpenCL](https://www.amazon.co.uk/dp/B076VLQQTD/?coliid=IAG04C0OA7CCS&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[High Performance Parallelism Pearls Volume One: Multicore and Many-core Programming Approaches](https://www.amazon.co.uk/dp/B00PLOC4D6/?coliid=I3BEDQOAQ09T54&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Heterogeneous Computing with OpenCL 2.0 Paperback – 26 May 2015](https://www.amazon.co.uk/Heterogeneous-Computing-OpenCL-David-Kaeli/dp/0128014148/ref=tmm_pap_swatch_0?_encoding=UTF8&coliid=IQSCQ6KY1CLC6&colid=VGMW4P3F44LH&qid=&sr= )" "David R. Kaeli  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming Massively Parallel Processors: A Hands-on Approach 3rd Edition](https://www.amazon.com/dp/0128119861/?coliid=IVXLYK0PHPIMU&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "David B. Kirk " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[GPU Parallel Program Development Using CUDA (Chapman & Hall/CRC Computational Science) Hardcover – 6 Oct 2016](https://www.amazon.co.uk/dp/1498750753/?coliid=I1AVH5U89G43FO&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Tolga Soyata" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[How to Write Parallel Programs: A First Course Hardcover – October 29, 1990](https://www.amazon.com/How-Write-Parallel-Programs-Course/dp/026203171X )" "Nicholas Carriero  (Author), David Gelernter (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))


(setq soft-skills-list '(

("[Patterns of Software: Tales from the Software Community](https://www.amazon.com/gp/product/0195121236/ref=dbs_a_def_rwt_hsch_vapi_taft_p1_i0 )" "Richard P. Gabriel " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Beautiful Code Leading Programmers Explain How They Think](http://web.archive.org/web/20130517075141/http://shop.oreilly.com/product/9780596510046.do )" "Andy Oram, Greg Wilson" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Soul of a New Machine](https://www.amazon.com/Soul-New-Machine-Modern-Library/dp/0679602615/ref=tmm_hrd_swatch_0?_encoding=UTF8&qid=&sr= )" "Tracy Kidder" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Out of the Inner Circle: A Hacker's Guide to Computer Security Paperback – April 1, 1985](https://www.amazon.com/Out-Inner-Circle-Computer-Security/dp/0914845365 )" "Bill 'the Cracker' Landreth" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Connection Machine (Artificial Intelligence) New edition Edition  ](https://www.amazon.com/Connection-Machine-Artificial-Intelligence/dp/0262580977 )" "W. Danny Hillis (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Innovation Happens Elsewhere: Open Source as Business Strategy Hardcover – April 25, 2005](https://www.amazon.com/dp/1558608893/?coliid=I3CB8FK6F8ZRSK&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Ron Goldman  (Author), Richard P. Gabriel  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Discipline of Programming 59683rd Edition](https://www.amazon.com/Discipline-Programming-Edsger-W-Dijkstra/dp/013215871X )" "Edsger W. Dijkstra (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Untold History of Japanese Game Developers: Gold Paperback – August 4, 2014](https://www.amazon.com/dp/0992926025/?coliid=I3IU7TOTVCXDL1&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "S.M.G Szczepaniak " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[THE LEGEND OF JOHN VON NEUMANN P. R. HALMOS](https://news.ycombinator.com/item?id=1866305 )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Conversation with Arthur Whitney A few well-chosen words about programming languages from a long-time designer](https://queue.acm.org/detail.cfm?id=1531242)" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Data Scientists at Work 1st ed. Edition](https://www.amazon.com/dp/1430265981/?coliid=I2VVQ08F3KOO7I&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Sebastian Gutierrez " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Idea Factory: Bell Labs and the Great Age of American Innovation Paperback – February 26, 2013](https://www.amazon.com/dp/0143122797/?coliid=I18TMVPTPYS2ZU&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Jon Gertner " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Go To The Story Of The Math Majors, Bridge Players, Engineers, Chess Wizards, Scientists And Iconoclasts Who Were The Hero Programmers Of The Software Revolution Hardcover – October 16, 2001](https://www.amazon.com/dp/0465042252/?coliid=I7EXE0IE1X1Z4&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Steve Lohr " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programmers at Work: Interviews With 19 Programmers Who Shaped the Computer Industry (Tempus) Paperback – July 1, 1989](https://www.amazon.com/dp/1556152116/?coliid=I2EGJKWZ6T0BH7&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Susan Lammers " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Best Software Writing I: Selected and Introduced by Joel Spolsky 1st Corrected ed., Corr. 2nd printing Edition by Avram Joel Spolsky ](https://www.amazon.com/Best-Software-Writing-Selected-Introduced/dp/1590595009/ref=pd_sim_14_1?_encoding=UTF8&pd_rd_i=1590595009&pd_rd_r=0c708566-f5b0-11e8-8ad5-2179f688e965&pd_rd_w=u3Rc8&pd_rd_wg=WtN14&pf_rd_i=desktop-dp-sims&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=18bb0b78-4200-49b9-ac91-f141d61a1780&pf_rd_r=29350PKJA79PSHP3R0ME&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=29350PKJA79PSHP3R0ME )" "Joel Spolsky" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Masterminds of Programming: Conversations with the Creators of Major Programming Languages (Theory in Practice (O'Reilly)) 1st Edition](https://www.amazon.com/dp/0596515170/?coliid=I3E0HJXQXCUY9X&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Federico Biancuzzi" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[97 Things Every Programmer Should Know: Collective Wisdom from the Experts 1st Edition](https://www.amazon.com/dp/0596809484/?coliid=I2BJRVFMZBVZYW&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Kevlin Henney " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Founders at Work: Stories of Startups' Early Days Kindle Edition](https://www.amazon.com/dp/B009IXMK4O/?coliid=I3EM6MCGOL31SN&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Jessica Livingston " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[perlisms](http://www.cs.yale.edu/homes/perlis-alan/quotes.html)" "Alan Perlis" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
))

(setq algo-ds-list '(

("[The Stony Brook Algorithm Repository](http://algorist.com/algorist.html )" "Steven Skiena" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Genetic Algorithms with Python](https://leanpub.com/genetic_algorithms_with_python )" "Clinton Sheppard" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Real-World Algorithms: A Beginner's Guide (The MIT Press)](https://www.amazon.co.uk/dp/0262035707/?coliid=I1E2YN0UTC1C9E&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Numerical Algorithms with C Paperback – 23 Aug 2014](https://www.amazon.co.uk/dp/3642646824/?coliid=I30FDISALGVGPF&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Giesela Engeln-Mullges (Author), Frank Uhlig" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Algorithms + Data Structures = Programs](https://www.amazon.com/dp/0130224189/?coliid=IRSZ2YBISLMPV&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Niklaus Wirth" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Design of Approximation Algorithms 1st Edition](https://www.amazon.com/dp/0521195276/?coliid=I26HYIPUILIBJA&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "David P. Williamson" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computational Geometry: An Introduction Through Randomized Algorithms 1st Edition](https://www.amazon.com/dp/0133363635/?coliid=I2RO3793RQF3JX&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Ketan Mulmuley " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Algorithmics of Nonuniformity: Tools and Paradigms (Discrete Mathematics and Its Applications)](https://www.amazon.co.uk/dp/1498750710/?coliid=I3JPXVQWC3SVM4&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Purely Functional Data Structures](https://www.amazon.co.uk/dp/0521663504/?coliid=I1Z1IRTP21HAB1&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Distributed Systems: An Algorithmic Approach, 2nd Edition](https://www.amazon.com/Distributed-Systems-Algorithmic-Approach-Information/dp/1466552972/ref=dp_ob_title_bk )" "Sukumar Ghosh " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Handbook of Data Structures and Applications](https://www.amazon.co.uk/dp/149870185X/?coliid=I2G72176DC9XHS&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mastering Algorithms with C](https://www.amazon.co.uk/dp/1565924533/?coliid=IO26ILAQD9X1R&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Recursive Programming](https://www.amazon.co.uk/dp/1498735282/?coliid=IRUDDURUIUGF&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Pearls of Functional Algorithm Design 1st Edition](https://www.amazon.com/dp/0521513383/?coliid=I2SJUUW5RUGKGZ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Richard Bird " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Approximation Algorithms](https://www.amazon.com/dp/3540653678/?coliid=I3VAO4X2ANWXW2&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Vijay V. Vazirani" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Probability and Computing: Randomized Algorithms and Probabilistic Analysis](https://www.amazon.com/dp/0521835402/?coliid=I247OZXGIWRIRV&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Michael Mitzenmacher  (Author), Eli Upfal " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Algorithms on Strings, Trees, and Sequences: Computer Science and Computational Biology 1st Edition](https://www.amazon.com/dp/0521585198/?coliid=I9D3BGXXSW30Z&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Dan Gusfield " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Handbook of Discrete and Computational Geometry (Discrete Mathematics and Its Applications) 3rd Edition](https://www.amazon.com/dp/1498711391/?coliid=I3PMU4ZCOBWEUE&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Data Structures and Network Algorithms (CBMS-NSF Regional Conference Series in Applied Mathematics)](https://www.amazon.com/dp/0898711878/?coliid=I2PZC9XQR0IO1G&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Robert Endre Tarjan" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Randomized Algorithms (Cambridge International Series on Parallel Computation)](https://www.amazon.co.uk/dp/0521474655/?coliid=I1FW7WLMTJ4MJU&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Motwani " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Parallel Algorithms and Architectures: Arrays, Trees, Hypercubes 1st Edition](https://www.amazon.com/dp/1558601171/?coliid=I3LKIPNEWJ2P5M&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Frank Thomson Leighton" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Parallel Algorithms 1st Edition](https://www.amazon.com/dp/0201548569/?coliid=IVD23PZ3AFJAB&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Joseph JaJa (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Parallel Graph Algorithms (Chapman & Hall/CRC Computational Science)](https://www.amazon.co.uk/dp/1466573260/?coliid=I1NOYDLCCHW1LQ&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Parallel Algorithms (Chapman & Hall/CRC Numerical Analysis and Scientific Computing Series)](https://www.amazon.co.uk/dp/B005H6YSLE/?coliid=I1EWIBY1I4IZGY&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Clever Algorithms: Nature-Inspired Programming Recipes By Jason Brownlee PhD](http://cleveralgorithms.com/nature-inspired/index.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Learning Functional Data Structures and Algorithms](https://www.amazon.co.uk/dp/B01DWFRFUW/?coliid=I1KG2TG0E5KGIZ&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Substring search algorithm online algo ](http://volnitsky.com/project/str_search/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq signal-processing-list '(

("[Designing Audio Effect Plug-Ins in C++: With Digital Audio Signal Processing Theory Hardcover – 20 Jul 2017](https://www.amazon.co.uk/Designing-Audio-Effect-Plug-Ins-Processing/dp/1138406627/ref=tmm_hrd_swatch_0?_encoding=UTF8&coliid=I1EVN2T7NHSZ6X&colid=1YR893IZ003PC&qid=&sr= )" "Will Pirkle (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Designing Software Synthesizer Plug-Ins in C++: For RackAFX, VST3, and Audio Units Paperback – 15 Jan 2015](https://www.amazon.co.uk/Designing-Software-Synthesizer-Plug-Ins-RackAFX/dp/1138787078/ref=pd_sbs_14_2?_encoding=UTF8&pd_rd_i=1138787078&pd_rd_r=1a8b52ef-f55a-11e8-8e2e-a551147ef51d&pd_rd_w=jE2h4&pd_rd_wg=e5Hu4&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=XB05D57B0RDGHH2MCN1F&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=XB05D57B0RDGHH2MCN1F )" "Will Pirkle (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Audio Programming Book (The MIT Press) Hardcover – 7 Dec 2010](https://www.amazon.co.uk/Audio-Programming-Book-MIT-Press/dp/0262014467/ref=pd_bxgy_img_3?_encoding=UTF8&pd_rd_i=0262014467&pd_rd_r=32a7a73e-f55a-11e8-88d9-49b1531786cd&pd_rd_w=FIXGC&pd_rd_wg=xZUg9&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=466c8fd0-3653-4c9b-86fa-f9bc8fd2ae35&pf_rd_r=QB3P8ZJMQSQQJ34W1QDH&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=QB3P8ZJMQSQQJ34W1QDH )" "Richard Boulanger" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))


(setq ai-ml-list '(

("[Coding the Matrix: Linear Algebra through Applications to Computer Science 1st Edition](https://www.amazon.com/dp/0615880991/?coliid=I2WWR2IDJILRW7&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Philip N. Klein (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Fundamentals of Machine Learning for Predictive Data Analytics: Algorithms, Worked Examples, and Case Studies (The MIT Press) 1st Edition](https://www.amazon.com/dp/0262029448/?coliid=IEVYWQSAWY70O&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "John D. Kelleher " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computational Methods of Feature Selection (Chapman & Hall/CRC Data Mining and Knowledge Discovery Series) 1st Edition](https://www.amazon.com/dp/1584888784/?coliid=I1MTIPPSXFA7UG&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Huan Liu " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Spectral Feature Selection for Data Mining (Chapman & Hall/CRC Data Mining and Knowledge Discovery Series) 1st Edition](https://www.amazon.com/dp/1138112623/?coliid=I2BGWQ7XZPOTA9&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Zheng Alan Zhao " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Vision: Models, Learning, and Inference 1st Edition](https://www.amazon.com/dp/1107011795/?coliid=IGC8OQMLMK416&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Dr Simon J. D. Prince " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Numerical Algorithms: Methods for Computer Vision, Machine Learning, and Graphics 1st Edition](https://www.amazon.com/dp/1482251884/?coliid=I39HM2X5WFRRKW&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Justin Solomon " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Neural Network Methods in Natural Language Processing (Synthesis Lectures on Human Language Technologies) Paperback – April 17, 2017](https://www.amazon.com/dp/1627052984/?coliid=I3RM514VLB36VQ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Yoav Goldberg  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Foundations of Statistical Natural Language Processing 1st Edition](https://www.amazon.com/dp/0262133601/?coliid=I16ZKUQ1YPSBUT&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Christopher D. Manning  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Riemannian Geometry and Statistical Machine Learning Paperback – January 27, 2015](https://www.amazon.com/dp/3659682020/?coliid=INF5LAHWDGVMD&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Lebanon Guy " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Artificial Intelligence (3rd Edition) 3rd Edition](https://www.amazon.com/dp/0201533774/?coliid=I3JGQSFMJ56SIK&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Winston" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Pattern Recognition and Machine Learning (Information Science and Statistics)](https://www.amazon.com/dp/0387310738/?coliid=I1EXRK86FKFW28&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Christopher M. Bishop " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Reinforcement Learning: An Introduction (Adaptive Computation and Machine Learning) second edition Edition  ](https://www.amazon.com/dp/0262039249/?coliid=I2685CFIB5U9ED&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Richard S. Sutton (Author), Andrew G. Barto " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Deep Learning with Python 1st Edition  ](https://www.amazon.com/dp/1617294438/?coliid=I17BBGSYXMER9O&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Francois Chollet  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Python for Probability, Statistics, and Machine Learning 1st ed. 2016 Edition](https://www.amazon.com/dp/3319307150/?coliid=I3VFT7CK259Z0N&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "José Unpingco " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Genetic Programming: An Introduction (The Morgan Kaufmann Series in Artificial Intelligence) 1st Edition  ](https://www.amazon.com/dp/155860510X/?coliid=I3L67L5J3GKTP&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Wolfgang Banzhaf " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Natural Language Processing with PyTorch: Build Intelligent Language Applications Using Deep Learning 1st Edition](https://www.amazon.com/dp/1491978236/?coliid=IHYUFTDK9CJGH&colid=2R5QE46GC1OLG&psc=0 )" "Delip Rao " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Feature Engineering for Machine Learning: Principles and Techniques for Data Scientists 1st Edition  ](https://www.amazon.com/dp/1491953241/?coliid=I2RBVS7E2VOKU8&colid=2R5QE46GC1OLG&psc=0 )" "Alice Zheng" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Matrix and Tensor Factorization Techniques for Recommender Systems (SpringerBriefs in Computer Science)](https://www.amazon.co.uk/dp/3319413562/?coliid=I4FA7O65ZST26&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Theoretic Foundation of Predictive Data Analytics](https://www.amazon.co.uk/dp/0128036559/?coliid=I3QKM54M3EMKJE&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Artificial Intelligence: Third Edition Paperback – 14 Aug 2019](https://www.amazon.co.uk/Introduction-Artificial-Intelligence-Philip-Jackson/dp/0486832864/ref=dp_ob_title_bk )" "Philip C Jackson" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Deep Learning for Natural Language Processing Creating Neural Networks with Python by Goyal, Palash](https://www.apress.com/gp/book/9781484236840 )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Deep Belief Nets in C++ and CUDA C: Volume 3 Convolutional Nets](https://www.apress.com/gp/book/9781484237205 )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Matrix Computations (Johns Hopkins Studies in the Mathematical Sciences) fourth edition Edition](https://www.amazon.com/Computations-Hopkins-Studies-Mathematical-Sciences/dp/1421407949/ref=dp_ob_title_bk )" "Gene H. Golub  (Author), Charles F. Van Loan  (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Vector Calculus, Linear Algebra, and Differential Forms: A Unified Approach 5th edition book cover, Vector Calculus](http://matrixeditions.com/5thUnifiedApproach.html )" " John H. Hubbard and Barbara Burke Hubbard" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
))


(setq info-theory-list '(

("[Information Theory: A Tutorial Introduction Paperback – February 1, 2015](https://www.amazon.com/dp/0956372856/?coliid=I3KE9PM1X2FVDJ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "James V Stone " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Mathematical Theory of Communication First Edition (US) First Printing Edition](https://www.amazon.com/dp/0252725484/?coliid=I2L8GVELC8V8XV&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it)" "Claude E. Shannon " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Guide to Data Compression Methods (Springer Professional Computing) ](https://www.amazon.co.uk/Compression-Methods-Springer-Professional-Computing/dp/0387952608/ref=pd_sbs_14_2?_encoding=UTF8&pd_rd_i=0387952608&pd_rd_r=bb55bd56-f54f-11e8-9199-93a0264a9794&pd_rd_w=ID7N2&pd_rd_wg=yXJpf&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=7A9NN022CP3SWP6GY0JQ&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=7A9NN022CP3SWP6GY0JQ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Understanding Compression: Data Compression for Modern Developers](https://www.amazon.co.uk/Understanding-Compression-Data-Modern-Developers/dp/1491961538/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=1491961538&pd_rd_r=2b7cf121-f54f-11e8-a7e3-8d9e7c8330a3&pd_rd_w=DrGoo&pd_rd_wg=w2zMW&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=TP93QXJJHEX87H29S7ZE&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=TP93QXJJHEX87H29S7ZE )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Efficient Predictive Algorithms for Image Compression](https://www.amazon.co.uk/dp/3319511793/?coliid=I3MB3MA02VOHAC&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Data Compression (The Morgan Kaufmann Series in Multimedia Information and Systems)](https://www.amazon.co.uk/dp/0128094745/?coliid=I2GOYD0EOGLD50&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq game-dev-list '(

("[Programming Game AI](https://www.amazon.co.uk/dp/1556220782/?coliid=IMLK0EW2EKN8Z&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Example (Wordware Game Developers Library) Paperback – 1 Oct 2004 by Mat Buckland " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game Programming Gems 3 Hardcover – 25 Jul 2002](https://www.amazon.co.uk/dp/1584502339/?coliid=IV5QBM9HI2UWE&colid=SUODQKHMPSPE&psc=0 )" "Dante Treglia " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computational Geometry in C (Cambridge Tracts in Theoretical Computer Science) Hardcover – 13 Oct 1998](https://www.amazon.co.uk/Computational-Geometry-Cambridge-Theoretical-Computer/dp/0521640105/ref=tmm_hrd_swatch_0?_encoding=UTF8&qid=&sr= )" "Joseph O'Rourke " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game Physics Engine Development: How to Build a Robust Commercial-Grade Physics Engine for your Game Paperback – 9 Sep 2010](https://www.amazon.co.uk/dp/0123819768/?coliid=I2RIUHJTXOWCAC&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Ian Millington " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Artificial Intelligence for Games Hardcover – 12 Sep 2009](https://www.amazon.co.uk/dp/0123747317/?coliid=I3A2RL4L4T97R2&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Ian Millington " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Animation: Algorithms and Techniques Hardcover – 4 Oct 2012](https://www.amazon.co.uk/dp/0124158420/?coliid=I2FJW1TL9XZL1T&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Rick Parent " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game Engine Architecture, Third Edition](https://www.amazon.co.uk/Engine-Architecture-Third-Jason-Gregory/dp/1138035459/ref=pd_sbs_14_2?_encoding=UTF8&pd_rd_i=1138035459&pd_rd_r=366981ac-f546-11e8-8e71-03acc1ec4d28&pd_rd_w=WtTAM&pd_rd_wg=UtzHu&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=V5R3XAH96Z91AEYGMHAN&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=V5R3XAH96Z91AEYGMHAN )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Black Art of 3D Game Programming: Writing Your Own High-Speed 3D Polygon Video Games in C Paperback – August 1, 1995](https://www.amazon.com/Black-Art-Game-Programming-High-Speed/dp/1571690042/ref=pd_sim_14_1?_encoding=UTF8&pd_rd_i=1571690042&pd_rd_r=b0e3a615-f5a8-11e8-9db5-6f7d09a54174&pd_rd_w=EtKDb&pd_rd_wg=E3MWF&pf_rd_i=desktop-dp-sims&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=18bb0b78-4200-49b9-ac91-f141d61a1780&pf_rd_r=G4T2BP49TY740Q20KJBR&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=G4T2BP49TY740Q20KJBR )" "Andre Lamothe " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Fundamentals of C/C++ Game Programming Paperback – 25 Apr 2018](https://www.amazon.co.uk/Fundamentals-Game-Programming-Brian-Beuken/dp/1498788742/ref=sr_1_58?s=books&ie=UTF8&qid=1543747351&sr=1-58&keywords=c+programming )" "Brian Beuken (Author) " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Making 8-bit Arcade Games in C Paperback – 26 Apr 2017](https://www.amazon.co.uk/Making-8-bit-Arcade-Games-C/dp/1545484759/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=1543747351&sr=1-63 )" "Steven Hugg " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game Engine Black Book: Wolfenstein 3D Paperback – 5 Sep 2017](https://www.amazon.co.uk/Game-Engine-Black-Book-Wolfenstein/dp/1539692876/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=&sr= )" "Fabien Sanglard  (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming Role Playing Games with DirectX (Game Development Series) Paperback – 30 Jun 2004](https://www.amazon.co.uk/dp/159200315X/?coliid=I3TMMZFHJVII7N&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Jim Adams " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mechanics: Volume 1 (Course of Theoretical Physics) Paperback – 1 Jan 1976  ](https://www.amazon.co.uk/dp/0750628960/?coliid=I28QLE8SAB0OPF&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "L. D. Landau " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game Programming in C++: Creating 3D Games: Creating 3D Games (Game Design) Paperback – 28 Mar 2018  ](https://www.amazon.co.uk/dp/0134597206/?coliid=I35Q815LV511RX&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Sanjay Madhav" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Essential matematics for Games and Interactive Applications 3rd Edition](https://www.amazon.com/dp/1482250926/?coliid=I1P59MIDQ1MSYL&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "James M. Van Verth" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Foundations of Game Engine Development, Volume 1: Mathematics](https://www.amazon.co.uk/dp/0985811749/?coliid=I37HUPWEYH70HH&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Physically Based Rendering: From Theory to Implementation](https://www.amazon.co.uk/dp/0128006455/?coliid=I2XCTEW26PV33R&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game AI Pro 3: Collected Wisdom of Game AI Professionals](https://www.amazon.co.uk/dp/1498742580/?coliid=ILPRMHVTPTFYX&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Real-Time Rendering, Fourth Edition](https://www.amazon.co.uk/dp/1138627003/?coliid=I102AMV8S0YUAI&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mathematics & Physics for Programmers (GAME DEVELOPMENT SERIES)](https://www.amazon.co.uk/dp/1435457331/?coliid=I288QLQN3GTLSO&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Graphics: Mathematical First Steps Textbook Binding – 26 Feb 1998  ](https://www.amazon.co.uk/dp/0135995728/?coliid=I1WT960A25C8M1&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Patricia Egerton" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game Physics Cookbook Paperback – 24 Mar 2017](https://www.amazon.co.uk/dp/1787123669/?coliid=I1WS5WTNLD2SYH&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Gabor " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[GPU Gems 3: Programming Techniques for High-Performance Graphics and General-Purpose Computation Hardcover – 2 Aug 2007](https://www.amazon.co.uk/dp/0321515269/?coliid=I3M081F5Z0LBC7&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Hubert Nguyen" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[GPU Gems 2: Programming Techniques for High-Performance Graphics and General-Purpose Computation Hardcover – 3 Mar 2005](https://www.amazon.co.uk/dp/0321335597/?coliid=I3HYFDQD6N3BPV&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Matt Pharr " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[GPU Pro 7: Advanced Rendering Techniques Hardcover – 8 Apr 2016](https://www.amazon.co.uk/GPU-Pro-Advanced-Rendering-Techniques/dp/149874253X/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=149874253X&pd_rd_r=2fdee9ed-f604-11e8-8b20-832b885e8b7e&pd_rd_w=h6pLP&pd_rd_wg=ctFnP&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=ZTQ0B26TW9GBVP35334C&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=ZTQ0B26TW9GBVP35334C )" "Wolfgang Engel " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Game AI Pro 3: Collected Wisdom of Game AI Professionals Hardcover – 31 Jul 2017](https://www.amazon.co.uk/Game-AI-Pro-Collected-Professionals/dp/1498742580/ref=pd_bxgy_3?_encoding=UTF8&pd_rd_i=1498742580&pd_rd_r=f8d671a3-f606-11e8-9199-93a0264a9794&pd_rd_w=C9Zy2&pd_rd_wg=HeCNY&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=466c8fd0-3653-4c9b-86fa-f9bc8fd2ae35&pf_rd_r=MQZ8YXDBD96KJDJJV6Z9&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=MQZ8YXDBD96KJDJJV6Z9 )" "Steve Rabin" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[GPU Gems: Programming Techniques, Tips and Tricks for Real-Time Graphics Hardcover – 22 Mar 2004](https://www.amazon.co.uk/dp/0321228324/?coliid=I1PJUJCLYMWCQG&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Randima Fernando" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[GPU Computing Gems Emerald Edition (Applications of GPU Computing Series) Hardcover – 21 Mar 2011](https://www.amazon.co.uk/GPU-Computing-Gems-Emerald-Applications/dp/0123849888/ref=pd_sbs_14_7?_encoding=UTF8&pd_rd_i=0123849888&pd_rd_r=32204da4-f604-11e8-8e36-0b3c5f1ab512&pd_rd_w=nxDtU&pd_rd_wg=7n3qL&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=VTMFNMNNDK8PYH7DAMKY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=VTMFNMNNDK8PYH7DAMKY )" "Wen-mei W. Hwu" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Graphics, C Version: United States Edition Hardcover – 24 May 1996](https://www.amazon.co.uk/Computer-Graphics-Version-United-States/dp/0135309247/ref=pd_sbs_14_3?_encoding=UTF8&pd_rd_i=0135309247&pd_rd_r=352fd794-f604-11e8-86ef-db32b55a2361&pd_rd_w=SKbcL&pd_rd_wg=9FpnZ&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=D7FCXNPQF4429TSZ9TPG&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=D7FCXNPQF4429TSZ9TPG )" "Donald D. Hearn" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming Mutliplayer FPS Direct X (Game Development Series) Paperback – 19 Jan 2005](https://www.amazon.co.uk/dp/1584503637/?coliid=INZAX7WFN3YZT&colid=SUODQKHMPSPE&psc=0 )" "Vaughan Young" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Graphics, reissued 2nd Ed. Hardcover – 4 Aug 1995](https://www.amazon.co.uk/Computer-Graphics-reissued-2nd-Ed/dp/0201848406/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=0201848406&pd_rd_r=352fd794-f604-11e8-86ef-db32b55a2361&pd_rd_w=SKbcL&pd_rd_wg=9FpnZ&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=D7FCXNPQF4429TSZ9TPG&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=D7FCXNPQF4429TSZ9TPG )" "James D. Foley " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Fundamentals of Computer Graphics Hardcover – 27 Jan 2016 ](https://www.amazon.co.uk/dp/1482229390/?coliid=I2AVRZPHPE1FE4&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Steve Marschner " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Real-Time Collision Detection (The Morgan Kaufmann Series in Interactive 3d Technology) Hardcover – 22 Dec 2004](https://www.amazon.co.uk/Real-Time-Collision-Detection-Interactive-Technology/dp/1558607323/ref=pd_sbs_14_12?_encoding=UTF8&pd_rd_i=1558607323&pd_rd_r=729a1070-f617-11e8-b8f2-97092196d631&pd_rd_w=SBoJ7&pd_rd_wg=aA0e2&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=KV208CMAHSJF4H6W49M1&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=KV208CMAHSJF4H6W49M1 )" "Christer Ericson " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Beginning Math and Physics for Game Programmers (New Riders Games) Paperback – 22 Mar 2004](https://www.amazon.co.uk/Beginning-Physics-Programmers-Riders-Games/dp/0735713901/ref=pd_sbs_14_21?_encoding=UTF8&pd_rd_i=0735713901&pd_rd_r=729a1070-f617-11e8-b8f2-97092196d631&pd_rd_w=SBoJ7&pd_rd_wg=aA0e2&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=KV208CMAHSJF4H6W49M1&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=KV208CMAHSJF4H6W49M1 )" "Wendy Stahler" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Ramblings in Realtime](https://www.bluesnews.com/abrash/contents.shtml )" "Michael Abrash" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))


(setq hft-list '(

("[Advanced Quantitative Finance with C++ Paperback – 25 Jun 2014](https://www.amazon.co.uk/dp/1782167226/?coliid=I8BJLU8SV36A&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Alonso Peña" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mastering Python for Finance Paperback – 29 Apr 2015](https://www.amazon.co.uk/Derivatives-Analytics-Python-Simulation-Calibration/dp/1119037999/ref=pd_bxgy_img_3?_encoding=UTF8&pd_rd_i=1119037999&pd_rd_r=99b66791-f55a-11e8-84fc-9f9314536756&pd_rd_w=SpLIl&pd_rd_wg=67XNl&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=466c8fd0-3653-4c9b-86fa-f9bc8fd2ae35&pf_rd_r=EV7XBRBE72WTPVZS0ZXY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=EV7XBRBE72WTPVZS0ZXY )" "James Ma Weiming" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Advances in Financial Machine Learning Hardcover – February 21, 2018](https://www.amazon.com/dp/1119482089/?coliid=I1C6GFDW77BWWE&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Marcos Lopez de Prado " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Professional Automated Trading: Theory and Practice 1st Edition](https://www.amazon.com/dp/1118129857/?coliid=I1Z2HWBB15Q2DP&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Eugene A. Durenard  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq info-retr-list '(

("[Managing Gigabytes: Compressing and Indexing Documents and Images, Second Edition (The Morgan Kaufmann Series in Multimedia Information and Systems) 1st Edition](https://www.amazon.com/Managing-Gigabytes-Compressing-Multimedia-Information/dp/1558605703 )" "Ian H. Witten  (Author), Alistair Moffat (Author), Timothy C. Bell  (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Notes on Music Information Retrieval](https://musicinformationretrieval.com/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[An Introduction to Database Systems 8th (eighth) Edition](https://www.amazon.co.uk/Introduction-Database-Systems-published-Pearson/dp/B00EKYUU0W/ref=pd_sbs_14_2?_encoding=UTF8&pd_rd_i=B00EKYUU0W&pd_rd_r=eff8a732-f54c-11e8-bed3-773608197450&pd_rd_w=gVKrS&pd_rd_wg=5X2lP&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=9E06HMM0B5T8SRK311MH&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=9E06HMM0B5T8SRK311MH )" "Date, C.J." "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Video Cataloguing: Structure Parsing and Content Extraction ](https://www.amazon.co.uk/dp/1138894133/?coliid=I2NVCD3J4ZUJEF&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Search Engines: Information Retrieval in Practice 1st Edition](https://www.amazon.com/dp/0136072240/?coliid=IITOOCXJYT3LZ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Bruce Croft " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Information Retrieval: Implementing and Evaluating Search Engines (The MIT Press) Paperback – February 12, 2016](https://www.amazon.com/dp/0262528878/?coliid=I2ZDKH167A5SXQ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Stefan Büttcher " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Information Retrieval 1st Edition](https://www.amazon.com/dp/0521865719/?coliid=I36WVRN1WAMGY&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Christopher D. Manning" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mining of Massive Datasets](https://www.amazon.com/Mining-Massive-Datasets-Jure-Leskovec/dp/1107077230/ref=sr_1_1?s=books&ie=UTF8&qid=1543695155&sr=1-1&keywords=mining+massive )" "Jeffrey Ullman" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Database Design (MCGRAW HILL COMPUTER SCIENCE SERIES) Subsequent Edition](https://www.amazon.com/Database-Design-MCGRAW-COMPUTER-SCIENCE/dp/0070701326 )" "Gio Wiederhold  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))


(setq theory-cs-list '(

("[Feynman Lectures On Computation (Frontiers in Physics) 1st Edition](https://www.amazon.com/Feynman-Lectures-Computation-Frontiers-Physics/dp/0738202967 )" "Richard P. Feynman  (Author), Anthony Hey (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computational Complexity Paperback – 30 Nov 1993](https://www.amazon.co.uk/dp/0201530821/?coliid=I2PF8FOD5M36G7&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Christos H. Papadimitriou" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Algebra of Programming](https://www.amazon.co.uk/dp/013507245X/?coliid=I24UI5TQNZ0Y6M&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Foundations for Programming Languages (Foundations of Computing)](https://www.amazon.com/dp/0262133210/?coliid=I3QUQA84XQ1W5N&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "John C. Mitchell " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Theory and Practice of Computation - Proceedings of Workshop on Computation: Theory and Practice (Wctp2015) Hardcover – 27 Apr 2017](https://www.amazon.co.uk/dp/9813202807/?coliid=IZGJA42C0OC3Y&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Masayuki Numao " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Pattern Calculus: Computing with Functions and Structures](https://www.amazon.co.uk/dp/3642426018/?coliid=I3R17ZK3K3PGBQ&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Discipline of Programming (Automatic Computation) 19 Mar 1976](https://www.amazon.co.uk/dp/013215871X/?coliid=I3SRAPWL5KKQPO&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "E. Dijkstra" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Types and Programming Languages (The MIT Press) 1st Edition](https://www.amazon.com/dp/0262162091/?coliid=I2LCRRSALR3KLP&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Benjamin C. Pierce " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Haskell Road to Logic, Maths and Programming (Texts in Computing, Vol. 4)](https://www.amazon.co.uk/dp/0954300696/?coliid=ICKBPPNKS6BK9&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Little Typer (The MIT Press) Paperback – September 18, 2018](https://www.amazon.com/dp/0262536439/?coliid=I1Q561HW6ZAGCQ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Daniel P. Friedman " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mathematical Theory of Computation (Dover Books on Mathematics) Paperback – December 24, 2003](https://www.amazon.com/dp/0486432386/?coliid=I2CECNXUR21RJF&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Zohar Manna " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
))


(setq os-dev-list '(

("[The Design and Implementation of the FreeBSD Operating System](https://www.amazon.co.uk/dp/0321968972/?coliid=I2TNHODKMNZU5A&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Systems: A Programmer's Perspective](https://www.amazon.co.uk/dp/1292101768/?coliid=I26ZBJJX04WO8B&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Lions' Commentary on Unix 6th Edition](https://www.amazon.com/Lions-Commentary-Unix-John/dp/1573980137 )" "John Lions  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Windows® via C/C++ (Developer Reference)](https://www.amazon.co.uk/dp/B00JDMQK9G/?coliid=IW5R4HS74J0MW&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Linux Programming Interface: A Linux and UNIX System Programming Handbook 1st Edition by Michael Kerrisk ](https://www.amazon.com/dp/1593272200/?coliid=I3U71FQKYCFMNC&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq dist-dev-list '(

("[On Designing and Deploying Internet-Scale Services - Windows Live Services Platform](https://www.usenix.org/legacy/event/lisa07/tech/full_papers/hamilton/hamilton_html/ )" "James Hamilton" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Byzantine Generals Problem](http://lamport.azurewebsites.net/pubs/pubs.html#byz )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Paxos Made Simple](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.69.3093&rep=rep1&type=pdf )" "Leslie Lamport" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Distributed Systems: Principles and Paradigms US Ed Edition](https://www.amazon.com/dp/0130888931/?coliid=I1FE1KY7IDDGEN&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Andrew S. Tanenbaum  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Scalable Internet Architectures 1st Edition  ](https://www.amazon.com/Scalable-Internet-Architectures-Theo-Schlossnagle/dp/067232699X )" "Theo Schlossnagle" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq infosec-list '(

("[ Phrack #64 file 4 A brief history of the Underground scene](http://web.archive.org/web/20101128205720/http://www.phrack.org/issues.html?issue=64&id=4&page=2 )" "The Circle of Lost Hackers Duvel@phrack.org" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Computer and Network Security: Navigating Shades of Gray 1st Edition](https://www.amazon.com/dp/1439860718/?coliid=I1NS89J88AYIQ6&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Richard R. Brooks" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Practical Binary Analysis: Build Your Own Linux Tools for Binary Instrumentation, Analysis, and Disassembly](https://www.amazon.co.uk/Practical-Binary-Analysis-Instrumentation-Disassembly-ebook/dp/B07BPKWJVT/ref=sr_1_33?s=books&ie=UTF8&qid=1543742753&sr=1-33&keywords=programming+mathematics )" "Dennis Andriesse (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Attacking Network Protocols: A Hacker's Guide to Capture, Analysis, and Exploitation 1st Edition](https://www.amazon.co.uk/Attacking-Network-Protocols-Analysis-Exploitation-ebook/dp/B071V4DYVC/ref=pd_sim_351_1?_encoding=UTF8&pd_rd_i=B071V4DYVC&pd_rd_r=4bbc23ec-f614-11e8-826b-2d5c836b76fa&pd_rd_w=xEVXg&pd_rd_wg=gzTME&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=1e3b4162-429b-4ea8-80b8-75d978d3d89e&pf_rd_r=9GK6D1574QN1VPCY1H51&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=9GK6D1574QN1VPCY1H51)" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Malware Data Science: Attack Detection and Attribution Kindle Edition](https://www.amazon.co.uk/Malware-Data-Science-Detection-Attribution-ebook/dp/B077X1V9SY/ref=pd_sim_351_2?_encoding=UTF8&pd_rd_i=B077X1V9SY&pd_rd_r=4bbc23ec-f614-11e8-826b-2d5c836b76fa&pd_rd_w=xEVXg&pd_rd_wg=gzTME&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=1e3b4162-429b-4ea8-80b8-75d978d3d89e&pf_rd_r=9GK6D1574QN1VPCY1H51&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=9GK6D1574QN1VPCY1H51 )" "Joshua Saxe " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Practical Video Game Bots Automating Game Processes using C++, Python, and AutoIt](https://www.apress.com/gp/book/9781484237359 )" "Shpigor, Ilya" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Shellcoder's Handbook: Discovering and Exploiting Security Holes 2nd Edition](https://www.amazon.co.uk/Shellcoders-Handbook-Discovering-Exploiting-Security-ebook/dp/B004P5O38Q/ref=pd_sim_351_6?_encoding=UTF8&pd_rd_i=B004P5O38Q&pd_rd_r=4bbc23ec-f614-11e8-826b-2d5c836b76fa&pd_rd_w=xEVXg&pd_rd_wg=gzTME&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=1e3b4162-429b-4ea8-80b8-75d978d3d89e&pf_rd_r=9GK6D1574QN1VPCY1H51&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=9GK6D1574QN1VPCY1H51 )" "Chris Anley " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Hacking: The Art of Exploitation Paperback – 7 Feb 2008](https://www.amazon.co.uk/Hacking-Art-Exploitation-Jon-Erickson/dp/1593271441/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=&sr= )" "Jon Erickson" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Black Hat Python: Python Programming for Hackers and Pentesters Paperback – 14 Dec 2014](https://www.amazon.co.uk/Black-Hat-Python-Programming-Pentesters/dp/1593275900/ref=pd_sbs_14_5?_encoding=UTF8&pd_rd_i=1593275900&pd_rd_r=40e588e7-f619-11e8-8e71-03acc1ec4d28&pd_rd_w=TjgnJ&pd_rd_wg=CtmyJ&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=6V5NGXPT7G3CY574ZCWY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=6V5NGXPT7G3CY574ZCWY )" "Justin Seitz" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Practical Malware Analysis: A Hands-On Guide to Dissecting Malicious Software Paperback – 1 Feb 2012](https://www.amazon.co.uk/Practical-Malware-Analysis-Hands-Dissecting/dp/1593272901/ref=pd_sbs_14_17?_encoding=UTF8&pd_rd_i=1593272901&pd_rd_r=40e588e7-f619-11e8-8e71-03acc1ec4d28&pd_rd_w=TjgnJ&pd_rd_wg=CtmyJ&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=6V5NGXPT7G3CY574ZCWY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=6V5NGXPT7G3CY574ZCWY )" "Michael Sikorski " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Gray Hat Python: Python Programming for Hackers and Reverse Engineers Paperback – 3 May 2009](https://www.amazon.co.uk/Gray-Hat-Python-Programming-Engineers/dp/1593271921/ref=pd_sbs_14_42?_encoding=UTF8&pd_rd_i=1593271921&pd_rd_r=40e588e7-f619-11e8-8e71-03acc1ec4d28&pd_rd_w=TjgnJ&pd_rd_wg=CtmyJ&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=6V5NGXPT7G3CY574ZCWY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=6V5NGXPT7G3CY574ZCWY )" "Justin Seitz " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Reversing: Secrets of Reverse Engineering Paperback – 1 Apr 2005](https://www.amazon.co.uk/Reversing-Secrets-Engineering-Eldad-Eilam/dp/0764574817/ref=pd_sbs_14_44?_encoding=UTF8&pd_rd_i=0764574817&pd_rd_r=40e588e7-f619-11e8-8e71-03acc1ec4d28&pd_rd_w=TjgnJ&pd_rd_wg=CtmyJ&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=6V5NGXPT7G3CY574ZCWY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=6V5NGXPT7G3CY574ZCWY )" "Eldad Eilam " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Art of Memory Forensics Detecting Malware and Threats in Windows, Linux, and Mac Memory Paperback – 3 Oct 2014](https://www.amazon.co.uk/Art-Memory-Forensics-Detecting-Malware/dp/1118825098/ref=pd_sbs_14_48?_encoding=UTF8&pd_rd_i=1118825098&pd_rd_r=40e588e7-f619-11e8-8e71-03acc1ec4d28&pd_rd_w=TjgnJ&pd_rd_wg=CtmyJ&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=6V5NGXPT7G3CY574ZCWY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=6V5NGXPT7G3CY574ZCWY )" "Michael Hale Ligh" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Rootkits and Bootkits Reversing Modern Malware and Next Generation Threats Paperback – 15 Jan 2019](https://www.amazon.co.uk/Rootkits-Bootkits-Reversing-Malware-Generation/dp/1593277164/ref=sr_1_1?s=books&ie=UTF8&qid=1543745049&sr=1-1&keywords=rootkit )" "Alex Matrosov " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Rootkits: Subverting the Windows Kernel: Subverting the Windows Kernel (Addison-Wesley Software Security) Paperback – 22 Jul 2005](https://www.amazon.co.uk/Rootkits-Subverting-Addison-Wesley-Software-Security/dp/0321294319/ref=sr_1_3?s=books&ie=UTF8&qid=1543745049&sr=1-3&keywords=rootkit )" "Greg Hoglund" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Malware Analyst's Cookbook and DVD: Tools and Techniques for Fighting Malicious Code Paperback – 27 Oct 2010 ](https://www.amazon.co.uk/Malware-Analysts-Cookbook-DVD-Techniques/dp/0470613033/ref=pd_bxgy_img_3?_encoding=UTF8&pd_rd_i=0470613033&pd_rd_r=a3e59f1d-f619-11e8-9070-3de13d4da848&pd_rd_w=lq6es&pd_rd_wg=zF7y2&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=466c8fd0-3653-4c9b-86fa-f9bc8fd2ae35&pf_rd_r=982P1175GN716KBHBQDE&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=982P1175GN716KBHBQDE )" "Michael Ligh " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Managed Code Rootkits: Hooking into Runtime Environments Paperback – 28 Oct 2010](https://www.amazon.co.uk/Managed-Code-Rootkits-Hooking-Environments/dp/1597495743/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=1597495743&pd_rd_r=a3e59f1d-f619-11e8-9070-3de13d4da848&pd_rd_w=kgbvc&pd_rd_wg=zF7y2&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=982P1175GN716KBHBQDE&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=982P1175GN716KBHBQDE )" "Erez Metula " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Designing BSD Rootkits: An Introduction to Kernel Hacking 1st Edition](https://www.amazon.co.uk/Designing-BSD-Rootkits-Introduction-Hacking-ebook/dp/B002MZAR6I/ref=sr_1_12?s=books&ie=UTF8&qid=1543745049&sr=1-12&keywords=rootkit )" "Joseph Kong " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Guide to Kernel Exploitation: Attacking the Core 1st Edition](https://www.amazon.co.uk/Guide-Kernel-Exploitation-Attacking-Core-ebook/dp/B004FGMSFK/ref=pd_sim_351_1?_encoding=UTF8&pd_rd_i=B004FGMSFK&pd_rd_r=ace45379-f619-11e8-a7e3-8d9e7c8330a3&pd_rd_w=HFgB2&pd_rd_wg=Ocr6S&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=1e3b4162-429b-4ea8-80b8-75d978d3d89e&pf_rd_r=QA2GXWPYW0RFYHVDJDZX&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=QA2GXWPYW0RFYHVDJDZX )" "Enrico Perla " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Practical Reverse Engineering: x86, x64, ARM, Windows Kernel, Reversing Tools, and Obfuscation 1st Edition ](https://www.amazon.co.uk/Practical-Reverse-Engineering-Reversing-Obfuscation-ebook/dp/B00IA22R2Y/ref=pd_sim_351_2?_encoding=UTF8&pd_rd_i=B00IA22R2Y&pd_rd_r=379a514e-f61b-11e8-88d9-49b1531786cd&pd_rd_w=9E6O3&pd_rd_wg=6v5WN&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=1e3b4162-429b-4ea8-80b8-75d978d3d89e&pf_rd_r=T4M4HDANYK4WJZJVR3A6&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=T4M4HDANYK4WJZJVR3A6 )" "Bruce Dang " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Windows Internals, Part 2 (Developer Reference) 6th Edition](https://www.amazon.co.uk/Windows-Internals-Part-Developer-Reference-ebook/dp/B00JDMPIDU/ref=pd_sim_351_4?_encoding=UTF8&pd_rd_i=B00JDMPIDU&pd_rd_r=379a514e-f61b-11e8-88d9-49b1531786cd&pd_rd_w=9E6O3&pd_rd_wg=6v5WN&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=1e3b4162-429b-4ea8-80b8-75d978d3d89e&pf_rd_r=T4M4HDANYK4WJZJVR3A6&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=T4M4HDANYK4WJZJVR3A6 )" "Mark E. Russinovich " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq quantum-dev-list '(

("[Programming in Qlisp: A case study (Report / Stanford University. Computer Science Dept)](https://www.amazon.com/dp/B00071PNHW/?coliid=I30S5UE73GOESN&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Arkady Rabinov" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Automatic Quantum Computer Programming: A Genetic Programming Approach 2004th Edition](https://www.amazon.com/dp/1402078943/?coliid=I3VAMQOA51JREY&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Lee Spector " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Quantum Algorithms via Linear Algebra: A Primer (The MIT Press) 1st Edition](https://www.amazon.com/dp/0262028395/?coliid=I3BOJXVWTXSAP4&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Richard J. Lipton " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Quantum Computing for Computer Scientists 1st Edition](https://www.amazon.com/dp/0521879965/?coliid=I1RURA4TMPPOOJ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Noson S. Yanofsky " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Shor's Quantum Factoring Algorithm](https://arxiv.org/abs/quant-ph/0010034 )" "Samuel J. Lomonaco Jr" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Quantum computing primer ](https://www.dwavesys.com/tutorials/background-reading-series/quantum-computing-primer )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
))

(setq comp-arch-list '(

("[The Architecture of Symbolic Computers (McGraw-Hill Series in Supercomputing and Parallel Processing)](https://www.amazon.com/dp/0070355967/?coliid=I22X9HE8V9JD70&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Peter M. Kogge " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Modern Microprocessors A 90-Minute Guide!](http://www.lighterra.com/papers/modernmicroprocessors/ )" "Jason Robert Carey Patterson" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Inside the Machine An Illustrated Introduction to Microprocessors and Computer Architecture](https://nostarch.com/insidemachine.htm )" "Jon Stoke" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Systems: A Programmer's Perspective (3rd Edition) 3rd Edition](https://www.amazon.com/Computer-Systems-Programmers-Perspective-3rd/dp/013409266X/ref=dp_ob_title_bk )" "Randal E. Bryant" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(SLIDES) How to make a gameboy emulator](https://www.cl.cam.ac.uk/~pv273/slides/emulation.pdf )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq symbolic-comp-list '(

("[Algorithms for Computer Algebra 1992nd Edition](https://www.amazon.com/dp/0792392590/?coliid=I397U262TBL9WN&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Keith O. Geddes " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Algebra and Symbolic Computation: Elementary Algorithms 1st Edition](https://www.amazon.com/dp/1568811586/?coliid=I2OXME2K2EVS90&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Joel S. Cohen " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computer Algebra and Symbolic Computation: Mathematical Methods](https://www.amazon.com/dp/1568811594/?coliid=I2H2PQT72MKLVV&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Joel S. Cohen " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Modern Computer Algebra 3rd Edition](https://www.amazon.com/dp/1107039037/?coliid=I3E5RLF7LYWCXO&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Joachim von zur Gathen " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq math-stat-list '(

("[(FREE)(END-TO-END)Introduction to Applied Linear Algebra Vectors, Matrices, and Least Squares Julia Language Companion](http://vmls-book.stanford.edu/vmls-julia-companion.pdf )" "Stephen Boyd and Lieven Vandenberghe DRAFT August 26, 2018" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Turtle Geometry: The Computer as a Medium for Exploring Mathematics (Artificial Intelligence) Paperback – July 9, 1986](https://www.amazon.com/Turtle-Geometry-Mathematics-Artificial-Intelligence/dp/0262510375 )" "Harold Abelson  (Author), Andrea diSessa (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Funny Little Calculus Text.](https://www.math.upenn.edu/~ghrist/FLCT/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Applied Linear Algebra – Vectors, Matrices, and Least Squares](http://vmls-book.stanford.edu/ )" "Stephen Boyd and Lieven Vandenberghe" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Programmer's Introduction to Mathematics](https://pimbook.org/ )" "Jeremy Kun" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Concrete Mathematics: A Foundation for Computer Science Hardcover – 28 Feb 1994](https://www.amazon.co.uk/Concrete-Mathematics-Foundation-Computer-Science/dp/0201558025/ref=sr_1_3?s=books&ie=UTF8&qid=1543741520&sr=1-3&keywords=programming+mathematics )" "Ronald L. Graham (Author), Donald E. Knuth  (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Concise Introduction to Hypercomplex Fractals Hardcover – 7 Nov 2017](https://www.amazon.co.uk/dp/1138633429/?coliid=I2ZSSS0N4WCOGV&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Andrzej Katunin (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Advanced Mathematical Methods for Scientists and Engineers I: Asymptotic Methods and Perturbation Theory Paperback – 5 Dec 2010](https://www.amazon.co.uk/dp/1441931872/?coliid=I1APCTRBAJSJFG&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Carl M. Bender " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Statistical Intervals A Guide for Practitioners and Researchers (Wiley Series in Probability and Statistics) 2nd Edition](https://www.amazon.com/dp/0471687170/?coliid=I2NHP3VPPYK87R&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "William Q. Meeker " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Bridging the Gap to University Mathematics ](https://www.amazon.co.uk/dp/1848002890/?coliid=IOO7P6PWB6F3G&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Algebra : An Elementary Text-Book (2 volume set) 7th Edition](https://www.amazon.com/dp/0821819313/?coliid=IEYM1QS8IOJ58&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "G. Chrystal  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[All of Statistics A Concise Course in Statistical Inference (Springer Texts in Statistics) 1st Corrected ed. 20 Edition](https://www.amazon.com/dp/0387402721/?coliid=IO9ARXB3OOHLI&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Larry Wasserman" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Probability (Chapman & Hall/CRC Texts in Statistical Science) 1st Edition](https://www.amazon.com/Introduction-Probability-Chapman-Statistical-Science/dp/1466575573/ref=pd_sim_14_1?_encoding=UTF8&pd_rd_i=1466575573&pd_rd_r=801db3d9-f5a1-11e8-92ad-dd4cc9d0f0bc&pd_rd_w=nxhOK&pd_rd_wg=seYCS&pf_rd_i=desktop-dp-sims&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=18bb0b78-4200-49b9-ac91-f141d61a1780&pf_rd_r=6MEY3Y6CWKNZDGZ7VF4D&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=6MEY3Y6CWKNZDGZ7VF4D )" "Joseph K. Blitzstein " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Bayes' Rule: A Tutorial Introduction to Bayesian Analysis Paperback – June 4, 2013](https://www.amazon.com/dp/0956372848/?coliid=I37UEUQ31JIALL&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "James V Stone  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Computational Introduction to Number Theory and Algebra 2nd Edition](https://www.amazon.com/dp/0521516447/?coliid=I3NTIZBPOG71SK&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Victor Shoup " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Mathematics of Various Entertaining Subjects Research in Recreational Math Hardcover – 26 Jan 2016](https://www.amazon.co.uk/Mathematics-Various-Entertaining-Subjects-Recreational/dp/0691164037/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=0691164037&pd_rd_r=4da7f5eb-f611-11e8-9070-3de13d4da848&pd_rd_w=9pJG5&pd_rd_wg=6curO&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=426PWD96B3427ZGRH33H&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=426PWD96B3427ZGRH33H )" "Jennifer Beineke " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Behavioral Mathematics for Game AI Paperback – 5 Mar 2009](https://www.amazon.co.uk/Behavioral-Mathematics-Game-Dave-Mark/dp/1584506849/ref=sr_1_11?s=books&ie=UTF8&qid=1543741453&sr=1-11&keywords=game+mathematics )" "Dave Mark " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Mathematics of Various Entertaining Subjects: Research in Games, Graphs, Counting, and Complexity, Volume 2 Paperback – 2 Jul 2019](https://www.amazon.co.uk/Mathematics-Various-Entertaining-Subjects-Complexity/dp/069119226X/ref=sr_1_10?s=books&ie=UTF8&qid=1543741453&sr=1-10&keywords=game+mathematics )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq crypto-list '(

("[Advanced Statistical Steganalysis (Information Security and Cryptography)](https://www.amazon.co.uk/Advanced-Statistical-Steganalysis-Information-Cryptography/dp/3642143121/ref=tmm_hrd_swatch_0?_encoding=UTF8&coliid=I1XEX56MYG8GJC&colid=1YR893IZ003PC&qid=&sr= )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Communication Theory of Secrecy Systems](http://netlab.cs.ucla.edu/wiki/files/shannon1949.pdf )" "C. E. SHANNON" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
))

(setq viz-list '(

("[Geometric Data Structures for Computer Graphics Hardcover – 16 Jan 2006](https://www.amazon.co.uk/dp/1568812353/?coliid=I1JKJ7S8GFZQ98&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Elmar Langetepe " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[High Performance Visualization: Enabling Extreme-Scale Scientific Insight (Chapman & Hall/CRC Computational Science)](https://www.amazon.co.uk/dp/1138199613/?coliid=I1N5Z75YF3BOSB&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Grammar of Graphics (Statistics and Computing) 2nd Edition](https://www.amazon.com/dp/0387245448/?coliid=I2DUQEQT8XL3RO&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Leland Wilkinson" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Processing: An Introduction to Programming Paperback – 22 Sep 2016](https://www.amazon.co.uk/dp/1482255952/?coliid=I1OSITN7F7ZA5G&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Jeffrey L. Nyhoff " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Topological Methods in Data Analysis and Visualization IV Theory, Algorithms, and Applications: 4 (Mathematics and Visualization) Hardcover – 3 Jun 2017](https://www.amazon.co.uk/dp/3319446827/?coliid=I21RY9I93I2WC9&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Hamish Carr " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Mathematical Picture Book Hardcover – 23 Dec 2018](https://www.amazon.co.uk/dp/3642146473/?coliid=I2NFQF1TZ6MEYA&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Georg Glaeser " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Prototyping with Raspberry Pi & Processing: Building Interactive Systems with Code and Hardware Paperback – 31 Oct 2017](https://www.amazon.co.uk/dp/1491979968/?coliid=I1JKLRSFQUIS0Y&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "Gottfried Haider " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

("--" "--" "--" "--" "--" "--" "--" "--" "--")
("[Anatomy of a landing page](https://www.formstack.com/the-anatomy-of-a-perfect-landing-page )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Pure CSS GUI icons](http://nicolasgallagher.com/pure-css-gui-icons/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[bittorrent visualized - p2p protocol viz](http://mg8.org/processing/bt.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Tenacious C - C graphical IDE](http://tenaciousc.com/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Neat Algorithms - Flocking](http://web.archive.org/web/20120420215903/http://harry.me/2011/02/17/neat-algorithms---flocking )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[boids-Flock](http://archive.breefield.com/lab/flock/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[20 things I learned from the web](http://www.20thingsilearned.com/en-US/what-is-the-internet/1 )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Humane Interface: New Directions for Designing Interactive Systems](https://www.amazon.com/Humane-Interface-Directions-Designing-Interactive/dp/0201379376 )" "Jef Raskin  (Author) " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[ML algos viz](http://mldemos.epfl.ch/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq bio-insp-list '(

("[Swarm Intelligence (The Morgan Kaufmann Series in Evolutionary Computation) 1st Edition  ](https://www.amazon.com/Intelligence-Morgan-Kaufmann-Evolutionary-Computation/dp/1558605959 )" "Russell C. Eberhart (Author), Yuhui Shi " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Boids Background and Update  ](http://www.red3d.com/cwr/boids/ )" "Craig Reynolds" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Steering Behaviors For Autonomous Characters ](http://www.red3d.com/cwr/steer/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Boids Pseudocode ](http://www.vergenet.net/~conrad/boids/pseudocode.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Modeling Life: The Mathematics of Biological Systems 1st ed. 2017 Edition](https://www.amazon.com/dp/3319597302/?coliid=I38X2ZXCFNDNFI&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Alan Garfinkel " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq papers-list '(

("[(LIST) What papers should everyone read - stackcompsci](https://cstheory.stackexchange.com/questions/1168/what-papers-should-everyone-read )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq projects-list '(

("[Beej's Guide to C Programming](https://beej.us/guide/bgc/html/multi/index.html )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Beej's Guide to Network Programming Using Internet Sockets](https://beej.us/guide/bgnet/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Beej's Guide to Unix Interprocess Communication](https://beej.us/guide/bgipc/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Let's Build a Simple Database Writing a sqlite clone from scratch in C](https://cstack.github.io/db_tutorial/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a Linux Kernel Module — Part 1: Introduction](http://derekmolloy.ie/writing-a-linux-kernel-module-part-1-introduction/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a Bootloader Part 1](http://3zanders.co.uk/2017/10/13/writing-a-bootloader/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[How to Write ESP8266 Firmware From Scratch (using ESP Bare Metal SDK and C Language)](https://www.instructables.com/id/How-to-Write-ESP8266-Firmware-From-Scratch-using-E/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)How Browsers Work: Behind the scenes of modern web browsers](https://www.html5rocks.com/en/tutorials/internals/howbrowserswork/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Write your Own Virtual Machine](https://justinmeiners.github.io/lc3-vm/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Computed goto for efficient dispatch tables](https://eli.thegreenplace.net/2012/07/12/computed-goto-for-efficient-dispatch-tables )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Kernels 101 – Let’s write a Kernel Arjun Sreedharan](https://arjunsreedharan.org/post/82710718100/kernels-101-lets-write-a-kernel )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Writing a Simple Operating System — from Scratch by Nick Blundell](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dv.pdf )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Linux Driver Tutorial: How to Write a Simple Linux Device Driver](https://www.apriorit.com/dev-blog/195-simple-driver-for-linux-os )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Memory Allocators 101 - Write a simple memory allocator Arjun Sreedharan](https://arjunsreedharan.org/post/148675821737/memory-allocators-101-write-a-simple-memory )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[C Sockets - No Need For A Web Server!](https://www.i-programmer.info/programming/c-c/9993-c-sockets-no-need-for-a-web-server.html )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Tutorial - Write a Shell in C](https://brennan.io/2015/01/16/write-a-shell-in-c/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Teensy 3.1 bare metal: Writing a USB driver](http://kevincuzner.com/2014/12/12/teensy-3-1-bare-metal-writing-a-usb-driver/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[OS Dev Tutorials](https://wiki.osdev.org/Tutorials )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[OS lions book](http://warsus.github.io/lions-/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[OpenGL- Building your own C application](http://www.opengl-tutorial.org/miscellaneous/building-your-own-c-application/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) IMPLEMENTING A VIRTUAL MACHINE IN C](https://felixangell.com/blog/implementing-a-virtual-machine-in-c/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Writing your own Toy OS](https://linuxgazette.net/issue77/krishnakumar.html )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Writing Your Own Toy Compiler Using Flex, Bison and LLVM](https://gnuu.org/2009/09/18/writing-your-own-toy-compiler/)" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Writing an Emulator: Introduction](https://www.beardypig.com/2016/01/15/emulator-build-along-1/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Emulator 101](http://emulator101.com/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) How To Write a Computer Emulator by Marat Fayzullin](http://fms.komkon.org/EMUL8/HOWTO.html )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Writing an OS: Baby Steps](https://tutorialsbynick.com/writing-an-os-baby-steps/)" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Implementing a TCP server in C](https://ops.tips/blog/a-tcp-server-in-c/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Writing a reverse proxy/loadbalancer from the ground up in C, part 0: introduction](http://www.gilesthomas.com/2013/08/writing-a-reverse-proxyloadbalancer-from-the-ground-up-in-c-part-0/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Broken Thorn Operating System Development Series](http://www.brokenthorn.com/Resources/OSDevIndex.html)" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Operating Systems: From 0 to 1](https://tuhdo.github.io/os01/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Writing a Debugger](http://system.joekain.com/debugger/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)The little book about OS development Erik Helin, Adam Renberg](https://littleosbook.github.io/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[What every programmer should know about memory - Ulrich Drepper - Redhat](https://lwn.net/Articles/250967/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Build Your Own Text Editor](https://viewsourcecode.org/snaptoken/kilo/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END)Creating a Virtual Machine/Register VM in C](https://en.wikibooks.org/wiki/Creating_a_Virtual_Machine/Register_VM_in_C )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Neural Network from scratch: Part 1 – Theory](https://causeyourestuck.io/2017/06/12/neural-network-scratch-theory/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Gcc Macros ](https://gcc.gnu.org/onlinedocs/cpp/Macros.html )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)Machine Vision with OpenCV:A Primer](https://www.optolab.ti.bfh.ch/wiki/_media/huce:roboticslab:tutorials:opencv:machine.vision.with.opencv.pdf )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Clockwise spiral rule - David Anderson](http://c-faq.com/decl/spiral.anderson.html )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[CALLBACKS IN C++ USING TEMPLATE FUNCTORS Copyright 1994 Rich Hickey](http://www.tutok.sk/fastgl/callback.html )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Low Level Bit Hacks You Absolutely Must Know](http://www.catonmat.net/blog/low-level-bit-hacks-you-absolutely-must-know/ )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[How to design programs - Mathias Fellisien , shriram krishnamurthi](https://www.htdp.org/ )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Building a distributed in-memory key value store in Clojure.](http://markwoodhall.com/12-05-2016-building-a-distributed-in-memory-key-value-store-in-clojure/ )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Building a simple HTTP server in Clojure: Part I — Setting up server](https://medium.com/@divyum/building-a-simple-http-server-in-clojure-b8c80fa5035e )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Road to Common Lisp](http://stevelosh.com/blog/2018/08/a-road-to-common-lisp/ )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Scheme from Scratch - Introduction](http://peter.michaux.ca/articles/scheme-from-scratch-introduction )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Compilers: Backend to Frontend and Back to Front Again Abdulaziz Ghuloum](http://web.archive.org/web/20100310183100/http://www.cs.indiana.edu/~aghuloum/compilers-tutorial-2006-09-16.pdf )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Make a language in one hour: stacker](https://beautifulracket.com/stacker/why-make-languages.html )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a simple database in rust, part 1](http://nikhilism.com/post/2016/writing-simple-database-in-rust-part-1/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Embedded in Rust](https://blog.japaric.io/quickstart/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Tiny `ls` Clone Written in Rust](https://matthias-endler.de/2018/ls/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Bare Metal Rust: Building kernels in Rust](http://www.randomhacks.net/bare-metal-rust/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing an OS in Rust in tiny steps (Steps 1-5)](https://jvns.ca/blog/2014/03/12/the-rust-os-story/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing an OS in Rust (Second Edition) Philipp Oppermann's blog](https://os.phil-opp.com/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Of tantivy, a search engine in Rust (part 1)](https://fulmicoton.com/posts/behold-tantivy/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Matt Brubeck 08 Aug 2014 Let's build a browser engine!](https://limpet.net/mbrubeck/2014/08/08/toy-layout-engine-1.html )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Rust futures: an uneducated, short and hopefully not boring tutorial - Part 4 - A 'real' future from scratch](https://dev.to/mindflavor/rust-futures-an-uneducated-short-and-hopefully-not-boring-tutorial---part-4---a-real-future-from-scratch-734 )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing Python Extensions in Rust](https://kushaldas.in/posts/writing-python-extensions-in-rust.html )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a Microservice in Rust](http://www.goldsborough.me/rust/web/tutorial/2018/01/20/17-01-11-writing_a_microservice_in_rust/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Rust in Detail: Writing Scalable Chat Service from Scratch](http://nbaksalyar.github.io/2015/07/10/writing-chat-in-rust.html )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Build a DNS server from scratch ](https://github.com/EmilHernvall/dnsguide/blob/master/chapter1.md )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing An Interpreter In Rust](https://chr4.org/blog/2016/12/09/writing-an-interpreter-in-rust/ )" "miscellaneous" "Rust" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(END-TO-END)(FREE) A Programmer's Guide to Data Mining](http://guidetodatamining.com/ )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a Simple Compiler from Scratch](http://rickyhan.com/jekyll/update/2018/07/26/simple-compiler.html )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a basic x86-64 JIT compiler from scratch in stock Python](https://csl.name/post/python-jit/ )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Let’s Build A Simple Interpreter. Part 1.](https://ruslanspivak.com/lsbasi-part1/ )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a C Compiler, Part 1](https://norasandler.com/2017/11/29/Write-a-Compiler.html )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(How to Write a (Lisp) Interpreter (in Python))](http://norvig.com/lispy.html )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Fast and Easy Levenshtein distance using a Trie](http://stevehanov.ca/blog/index.php?id=114 )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Flask Mega-Tutorial Part XIX: Deployment on Docker Containers - April 10 2018](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-xix-deployment-on-docker-containers)" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(FREE)(END-TO-END) Write Yourself a Scheme in 48 Hours/Parsing](https://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours/Parsing )" "miscellaneous" "Haskell" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Why you should learn just a little Awk:](https://gregable.com/2010/09/why-you-should-know-just-little-awk.html )" "miscellaneous" "AWK" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing a StarCraft Bot in F#](https://blogs.msdn.microsoft.com/chrsmith/2010/03/18/writing-a-starcraft-bot-in-f/ )" "miscellaneous" "F#" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Pico8 - Writing a retro 3D FPS engine from scratch](https://medium.com/@btco_code/writing-a-retro-3d-fps-engine-from-scratch-b2a9723e6b06 )" "miscellaneous" "Pico8" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Statically Recompiling NES Games into Native Executables with LLVM and Go](https://andrewkelley.me/post/jamulator.html )" "miscellaneous" "Go" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Tutorial: write a scalable, fault-tolerant, network chat server and client (Scala)](https://doc.akka.io/docs/akka/1.3.1/scala/tutorial-chat-server.html )" "miscellaneous" "Scala" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Creating Domain Specific Languages with Scala - Part 1](https://blog.scalac.io/2015/05/07/encog-dsl.html )" "miscellaneous" "Scala" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Lexing and parsing in Scala using combinators: M-Expression syntax](http://matt.might.net/articles/implementation-of-m-expression-parser-in-scala-combinators-without-stdlexical-stdtokenparsers/ )" "miscellaneous" "Scala" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Building a compiler in Scala](https://medium.com/@anicolaspp/building-a-compiler-in-scala-8d51b467baec )" "miscellaneous" "Scala" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("" "miscellaneous" "Scala" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("" "miscellaneous" "Scala" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq cheat-list '(

("[linux command line reference](http://www.pixelbeat.org/cmdline.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq misc-list '(

("[The Tao-of-programming](http://canonical.org/~kragen/tao-of-programming.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[My history of (mostly failed) side projects and startups By Gabriel Weinberg](https://ye.gg/blog/2010/10/a-history-of-failed-projects.htmlg )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The MIT Guide to Hacking (mit.edu)](https://stuff.mit.edu/afs/athena/activity/h/htgamit/text/2005/HackingSection.txt )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[In Praise of APL: A Language for Lyrical Programming Professor Alan J. Perlis](http://www.jsoftware.com/papers/perlis77.htm )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Gödel, Escher, Bach: An Eternal Golden Braid Paperback – February 5, 1999 by Douglas R. Hofstadter  ](https://www.amazon.com/G%C3%B6del-Escher-Bach-Eternal-Golden/dp/0465026567 )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Once Upon an Algorithm: How Stories Explain Computing (The MIT Press)](https://www.amazon.co.uk/dp/0262036630/?coliid=I3EGRAB64L118R&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Every Computer Performance Book Paperback – March 29, 2013 by Bob Wescott ](https://www.amazon.com/dp/1482657759/?coliid=I8U8GYWIUF5GK&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Open Source Intelligence Methods and Tools A Practical Guide to Online Intelligence Authors: Hassan, Nihad](https://www.apress.com/gp/book/9781484232125 )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[(StackOverflow)Database development mistakes made by application developers](https://stackoverflow.com/questions/621884/database-development-mistakes-made-by-application-developers/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq software-engineering-list '(

("[The Architecture of Open Source Applications](http://www.aosabook.org/en/index.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[C: A Reference Manual, 5th Edition ](https://www.amazon.com/Reference-Manual-Samuel-P-Harbison/dp/013089592X )" "by Samuel P. Harbison  (Author), Guy L. Steele Jr. (Author)" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mastering Regular Expressions, 3rd Edition ](http://shop.oreilly.com/product/9780596528126.do )" "by Jeffrey Friedl" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Standard C Library 1st Edition by P.J. Plauger](https://www.amazon.com/Standard-C-Library-P-J-Plauger/dp/0131315099 )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Practice of Programming (Addison-Wesley Professional Computing Series) 1st Edition by Brian W. Kernighan  (Author), Rob Pike (Author)](https://www.amazon.com/Practice-Programming-Addison-Wesley-Professional-Computing/dp/020161586X )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The AWK Programming Language 1st Edition by Alfred V. Aho  (Author), Brian W. Kernighan  (Author), Peter J. Weinberger  (Author)](https://www.amazon.com/AWK-Programming-Language-Alfred-Aho/dp/020107981X )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Abstraction and Specification in Program Development (MIT Electrical Engineering and Computer Science) Hardcover – March 31, 1986 by Barbara Liskov (Author), John V. Guttag (Author)](https://www.amazon.com/Abstraction-Specification-Development-Electrical-Engineering/dp/0262121123 )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Concepts, Techniques, and Models of Computer Programming by Peter Van Roy and Seif Haridi](https://www.info.ucl.ac.be/~pvr/book.html)" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Prolog and Natural-Language Analysis Fernando C. N. Pereira and Stuart M. Shieber](http://www.mtome.com/Publications/PNLA/pnla.html)" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming Paradigms for Dummies: What Every Programmer Should Know Peter Van Roy](https://www.info.ucl.ac.be/~pvr/VanRoyChapter.pdf )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[From Mathematics to Generic Programming 1st Edition by Alexander A. Stepanov ](https://www.amazon.com/dp/0321942043/?coliid=I7BG22K8001JG&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Elements of Programming 1st Edition by Alexander A. Stepanov ](https://www.amazon.com/dp/032163537X/?coliid=I1NI16AT3X1VGS&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[On to C by Patrick Henry Winston](https://www.amazon.com/dp/020158042X/?coliid=I3OV1MZWEDSNS&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Art of Multiprocessor Programming, Revised Reprint 1st Edition by Maurice Herlihy ](https://www.amazon.com/dp/0123973376/?coliid=IS2DYWMQZR2HO&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Functional C (International Computer Science Series) 1st Edition by P. Hartel ](https://www.amazon.com/dp/0201419505/?coliid=I2ARVHUWPZWHPD&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Systematic Programming: An Introduction (Prentice-Hall Series in Automatic Computation) by Niklaus Wirth ](https://www.amazon.com/dp/0138803692/?coliid=IOHXJ38MIRZFR&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Expert C Programming: Deep C Secrets 1st Edition by Peter van der Linden](https://www.amazon.com/dp/0131774298/?coliid=I3LG10NF0OLWQA&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[C4.5: Programs for Machine Learning (Morgan Kaufmann Series in Machine Learning) Paperback – 12 Feb 1992 by J. Ross Quinlan ](https://www.amazon.co.uk/C4-5-Programs-Machine-Learning-Kaufmann/dp/1558602380/ref=sr_1_71?s=books&ie=UTF8&qid=1543738453&sr=1-71&keywords=mathematics+C+programming )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[21st Century C: C Tips from the New School 2nd Edition by Ben Klemens  ](https://www.amazon.com/dp/1491903899/?coliid=I2L1FRFNSL0STP&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Pointers on C 1st Edition by Kenneth Reek](https://www.amazon.com/dp/0673999866/?coliid=I1AGQ9VF96B49E&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[AI Application Programming (Programming Series) Paperback – June 3, 2005 by M. Tim Jones](https://www.amazon.com/dp/1584504218/?coliid=I1SYXQ4ZKJ5OJ9&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Writing Solid Code Microsoft Techniques for Developing Bug-free C. Programs (Microsoft Programming Series) Paperback – 1 Jan 1993 by Steve Maguire](https://www.amazon.co.uk/Writing-Solid-Code-Techniques-Programming/dp/1556155514/ref=sr_1_82?s=books&ie=UTF8&qid=1543738502&sr=1-82&keywords=mathematics+C+programming )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Programming Projects in C for Students of Engineering, Science, and Mathematics Paperback – 23 Oct 2014 by Rouben Rostamian](https://www.amazon.co.uk/Programming-Projects-Students-Engineering-Mathematics/dp/161197349X/ref=sr_1_18?s=books&ie=UTF8&qid=1543738354&sr=1-18&keywords=mathematics+C+programming )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Imperfect C++: Practical Solutions for Real-Life Programming Paperback – 21 Oct 2004 by Matthew Wilson ](https://www.amazon.co.uk/dp/0321228774/?coliid=I2V643WPLQQHM5&colid=SUODQKHMPSPE&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "C" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Structure and Interpretation of Computer Programs - 2nd Edition (MIT Electrical Engineering and Computer Science) second edition Edition by Harold Abelson  (Author), Gerald Jay Sussman  (Author), Julie Sussman  (Contributor)](https://www.amazon.com/dp/0262510871/ref=pd_lpo_sbs_dp_ss_1?pf_rd_p=aeebc627-7ecf-4129-8c0c-1d437f271eca&pf_rd_s=lpo-top-stripe-1&pf_rd_t=201&pf_rd_i=0262510375&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=W047BHMTVN9ZA5BSX7ZP&pf_rd_r=W047BHMTVN9ZA5BSX7ZP&pf_rd_p=aeebc627-7ecf-4129-8c0c-1d437f271eca )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Lisp (3rd Edition) 3rd Edition by Patrick Winston ](https://www.amazon.com/dp/0201083191/?coliid=I30PL0J6E8PWQP&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Paradigms of Artificial Intelligence Programming: Case Studies in Common Lisp 1st Edition by Peter Norvig  ](https://www.amazon.com/dp/1558601910/?coliid=I126V89DSN56FU&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Common Lisp Recipes: A Problem-Solution Approach Paperback – 30 Dec 2015 by Edmund Weitz ](https://www.amazon.co.uk/dp/1484211774/?coliid=I20CJV5UW48RIO&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Performance and Evaluation of LISP Systems (Computer Systems Series) Paperback – August 14, 1985 by Richard P. Gabriel  ](https://www.amazon.com/gp/product/0262571935/ref=dbs_a_def_rwt_bibl_vppi_i2 )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Interpreting LISP: Programming and Data Structures](https://www.amazon.co.uk/dp/1484227069/?coliid=IMP312QRTXAPB&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it)" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Successful Lisp](https://www.amazon.co.uk/dp/3937526005/?coliid=I3RQ53KGJQSZ6M&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Principles of Biomedical Informatics 2nd Edition by Ira J. Kalet PhD](https://www.amazon.com/dp/0124160190/?coliid=IOKIYSCMK7ARD&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Seasoned Schemer (The MIT Press) second edition Edition by Daniel P. Friedman ](https://www.amazon.com/Seasoned-Schemer-MIT-Press/dp/026256100X/ref=pd_sbs_14_3?_encoding=UTF8&pd_rd_i=026256100X&pd_rd_r=22a7f9c9-f581-11e8-9981-db38986b7aa3&pd_rd_w=LovuZ&pd_rd_wg=eWPVd&pf_rd_i=desktop-dp-sims&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=7d5d9c3c-5e01-44ac-97fd-261afd40b865&pf_rd_r=DJFDNTN6D658EAJCNK32&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=DJFDNTN6D658EAJCNK32 )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Art of the Metaobject Protocol Paperback – July 30, 1991 by Gregor Kiczales ](https://www.amazon.com/dp/0262610744/?coliid=I1LX6G39V5UIMJ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Lisp/Scheme" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Learning Scientific Programming with Python](https://www.amazon.co.uk/dp/110742822X/?coliid=IRLPTTEWA4DR&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Numerical Linear Algebra 1st Edition by Lloyd N. Trefethen ](https://www.amazon.com/dp/0898713617/?coliid=I2Q5CVL9338XOL&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Numerical Programming: A Practical Guide for Scientists and Engineers Using Python and C/C++ (Series in Computational Physics) 1st Edition, Kindle Edition by Titus A. Beu ](https://www.amazon.co.uk/Introduction-Numerical-Programming-Scientists-Computational-ebook/dp/B00NFODJYW/ref=sr_1_102?s=books&ie=UTF8&qid=1543738539&sr=1-102&keywords=mathematics+C+programming )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mathematics and Python Programming Paperback – 13 Sep 2014 by J.C. Bautista (Author)](https://www.amazon.co.uk/Mathematics-Python-Programming-J-C-Bautista/dp/1326017969/ref=sr_1_4?s=books&ie=UTF8&qid=1543738354&sr=1-4&keywords=mathematics+C+programming )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Primer on Scientific Programming with Python (Texts in Computational Science and Engineering) Hardcover – 26 Jun 2016 by Hans Petter Langtangen  ](https://www.amazon.co.uk/Scientific-Programming-Computational-Science-Engineering/dp/3662498863/ref=sr_1_81?s=books&ie=UTF8&qid=1543745371&sr=1-81&keywords=programming+mathematics )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Numerical Python: Scientific Computing and Data Science Applications with Numpy, SciPy and Matplotlib Paperback – 19 Jan 2019 by Robert Johansson ](https://www.amazon.co.uk/Numerical-Python-Scientific-Applications-Matplotlib/dp/1484242459/ref=pd_sbs_14_3?_encoding=UTF8&pd_rd_i=1484242459&pd_rd_r=64db82c4-f61a-11e8-86ef-db32b55a2361&pd_rd_w=6EEfy&pd_rd_wg=HwdDs&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=ZZ9FRJGEA1143DNKQJAK&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=ZZ9FRJGEA1143DNKQJAK )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Personal Finance with Python Using pandas, Requests, and Recurrent Authors: Humber, Max](https://www.apress.com/gp/book/9781484238011 )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Data Structures and Algorithms with Python (Undergraduate Topics in Computer Science)](https://www.amazon.co.uk/dp/3319130714/?coliid=I21V5QYAMA803X&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Effective Python: 59 Specific Ways to Write Better Python (Effective Software Development) Paperback – 26 Feb 2015 by Brett Slatkin  ](https://www.amazon.co.uk/dp/0134034287/?coliid=I227F2LP4LT9TY&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("" "miscellaneous" "Python" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

(setq blogs-list '(

("[How to be a Programmer: A Short, Comprehensive, and Personal Summary Robert L Read](http://web.archive.org/web/20070209143008/http://samizdat.mines.edu:80/howto/HowToBeAProgrammer.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[An overview of gradient descent optimization algorithms](http://ruder.io/optimizing-gradient-descent/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[DesignForHackers - Why Monet never used black](https://designforhackers.com/blog/impressionist-color-theory/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Finish  your games, and if you can't finish, try making something simpler](http://makegames.tumblr.com/post/1136623767/finishing-a-game )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Uses this](https://usesthis.com/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[research reynolds](http://www.red3d.com/research.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Are there any famous one-man-army programmers?](https://softwareengineering.stackexchange.com/questions/47197/are-there-any-famous-one-man-army-programmers )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[David Bacon (LINKS)](http://wry.me/~darius/personal/books.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Locklin on science Ruins of forgotten empires: APL languages](https://scottlocklin.wordpress.com/2013/07/28/ruins-of-forgotten-empires-apl-languages/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Many But Finite Tech and science for curious people](https://manybutfinite.com/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[the left fold/ issues ](https://www.foldl.org/issues/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[lambda-the-ultimate ](http://lambda-the-ultimate.org/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
))

(setq people-pages-list '(

("[steve Yegge -  Rich Programmer Food](http://steve-yegge.blogspot.com/2007/06/rich-programmer-food.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Paul  Khuong - Some Lisp](https://pvk.ca/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Fabian  Giesen](https://fgiesen.wordpress.com/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Ulrich  Drepper - Redhat](https://akkadia.org/drepper/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Nils M Holm's Bits and Pieces](http://t3x.org/index.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[D. J. Bernstein Mathematics and computer science](https://cr.yp.to/djb.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Monica S. Lam](https://suif.stanford.edu/~lam/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Fabrice Bellard](https://bellard.org/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Lennart Poettering](http://0pointer.de/lennart/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Jamie Zawinsky](https://www.jwz.org/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Leslie Lamport](http://lamport.azurewebsites.net/pubs/pubs.html )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Torben Ægidius Mogensen](http://hjemmesider.diku.dk/~torbenm/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[John D Cook - Solving hard problems ](https://www.johndcook.com/blog/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[James Hague - programming in the twenty-first century](https://prog21.dadgum.com/)" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Andy Wingo](http://wingolog.org/about/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Steve Hanov](http://stevehanov.ca/blog/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Peter Krumins](http://www.catonmat.net/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[ Leah Neukirchen](http://chneukirchen.org/trivium/intro )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Pascal Bourguignon's Sofware](https://www.informatimago.com/ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

))

;; (setq soft-skills-list '(

;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

;; ))


;; ("" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")


(setq cwd (sb-posix:getcwd))

(with-open-file (md  (concatenate 'string cwd "/README.md")
                     :direction :output
                     :if-exists :supersede
                     :if-does-not-exist :create))

(defun gen-table (entry-list cols topic)
  (with-open-file (md  (concatenate 'string cwd "/README.md")
		       :direction :output
		       :if-exists :append
		       :if-does-not-exist :create)


    (let ((max-length 0))
      (loop for entry in entry-list
	 do (loop for i in entry do(setq max-length (if (< max-length  (length  i))
							(length i )(eval max-length)))))
      (setq max-length (+ max-length 2))

      (format md "# ~s ~%~%" (string-capitalize topic))

      (format md "~%~%")
      (format md "<div class=\"datatable-begin\"></div>~%~%")

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
		      (format md (format nil "~~~:@<~A~>:@<~~A~~>|" (- max-length 1)) i))))

      (format md "~%~%")
      (format md "<div class=\"datatable-end\"></div>")
      (format md "~%~%")
      )))

(gen-table compiler-list cols "compilers")
(gen-table het-comp-list cols "heterogeneous computing")
(gen-table soft-skills-list cols "soft skills and historical")
(gen-table algo-ds-list cols "Algorithms & Data Structures")
(gen-table signal-processing-list cols "Signal processing")
(gen-table ai-ml-list cols "AI / Machine Learning / Theoretical / Mathematical Optimization")
(gen-table info-theory-list cols "Information theory and compression")
(gen-table game-dev-list cols "Game Engine & Game Development")
(gen-table hft-list cols "HFT & Finance")
(gen-table info-retr-list cols "Information Retrieval and Database  Systems")
(gen-table theory-cs-list cols "Theoretical Computer science")
(gen-table os-dev-list cols "Operating Systems")
(gen-table dist-dev-list cols "Distributed systems")
(gen-table infosec-list cols "Infosec & Hacking & Game sec")
(gen-table quantum-dev-list cols "Quantum computation")
(gen-table comp-arch-list cols "Computer Architecture")
(gen-table symbolic-comp-list cols "Computer algebra and symbolic computation")
(gen-table math-stat-list cols "Mathematics & Statistics")
(gen-table crypto-list cols "Cryptography")
(gen-table viz-list cols "Viz")
(gen-table bio-insp-list cols "Biological-inspired systems")
(gen-table papers-list cols "Papers")
(gen-table projects-list cols "Projects")
(gen-table misc-list cols "Miscellaneous")
(gen-table cheat-list cols "Cheatsheets")
(gen-table software-engineering-list cols "General Software engineering")
(gen-table blogs-list cols "Blogs")
(gen-table people-pages-list cols "People Pages")
