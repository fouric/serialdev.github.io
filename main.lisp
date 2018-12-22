
(defun concatString (list)
  "A non-recursive function that concatenates a list of strings."
  (if (listp list)
      (with-output-to-string (s)
         (dolist (item list)
           (if (stringp item)
             (format s "~a" item))))))

(setq cols '("Title(URL)" "Author" "language" "Book" "Blog" "Theory"
 "Implementation" "Free" "End-To-End"))


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
))

(setq signal-processing-list '(

("[Designing Audio Effect Plug-Ins in C++: With Digital Audio Signal Processing Theory Hardcover – 20 Jul 2017](https://www.amazon.co.uk/Designing-Audio-Effect-Plug-Ins-Processing/dp/1138406627/ref=tmm_hrd_swatch_0?_encoding=UTF8&coliid=I1EVN2T7NHSZ6X&colid=1YR893IZ003PC&qid=&sr= )" "Will Pirkle (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Designing Software Synthesizer Plug-Ins in C++: For RackAFX, VST3, and Audio Units Paperback – 15 Jan 2015](https://www.amazon.co.uk/Designing-Software-Synthesizer-Plug-Ins-RackAFX/dp/1138787078/ref=pd_sbs_14_2?_encoding=UTF8&pd_rd_i=1138787078&pd_rd_r=1a8b52ef-f55a-11e8-8e2e-a551147ef51d&pd_rd_w=jE2h4&pd_rd_wg=e5Hu4&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=XB05D57B0RDGHH2MCN1F&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=XB05D57B0RDGHH2MCN1F )" "Will Pirkle (Author)" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Audio Programming Book (The MIT Press) Hardcover – 7 Dec 2010](https://www.amazon.co.uk/Audio-Programming-Book-MIT-Press/dp/0262014467/ref=pd_bxgy_img_3?_encoding=UTF8&pd_rd_i=0262014467&pd_rd_r=32a7a73e-f55a-11e8-88d9-49b1531786cd&pd_rd_w=FIXGC&pd_rd_wg=xZUg9&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=466c8fd0-3653-4c9b-86fa-f9bc8fd2ae35&pf_rd_r=QB3P8ZJMQSQQJ34W1QDH&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=QB3P8ZJMQSQQJ34W1QDH )" "Richard Boulanger" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

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
))


(setq info-theory-list '(

("[Information Theory: A Tutorial Introduction Paperback – February 1, 2015](https://www.amazon.com/dp/0956372856/?coliid=I3KE9PM1X2FVDJ&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "James V Stone " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[The Mathematical Theory of Communication First Edition (US) First Printing Edition](https://www.amazon.com/dp/0252725484/?coliid=I2L8GVELC8V8XV&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it)" "Claude E. Shannon " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[A Guide to Data Compression Methods (Springer Professional Computing) ](https://www.amazon.co.uk/Compression-Methods-Springer-Professional-Computing/dp/0387952608/ref=pd_sbs_14_2?_encoding=UTF8&pd_rd_i=0387952608&pd_rd_r=bb55bd56-f54f-11e8-9199-93a0264a9794&pd_rd_w=ID7N2&pd_rd_wg=yXJpf&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=7A9NN022CP3SWP6GY0JQ&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=7A9NN022CP3SWP6GY0JQ )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Understanding Compression: Data Compression for Modern Developers](https://www.amazon.co.uk/Understanding-Compression-Data-Modern-Developers/dp/1491961538/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=1491961538&pd_rd_r=2b7cf121-f54f-11e8-a7e3-8d9e7c8330a3&pd_rd_w=DrGoo&pd_rd_wg=w2zMW&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=18edf98b-139a-41ee-bb40-d725dd59d1d3&pf_rd_r=TP93QXJJHEX87H29S7ZE&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=TP93QXJJHEX87H29S7ZE )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Efficient Predictive Algorithms for Image Compression](https://www.amazon.co.uk/dp/3319511793/?coliid=I3MB3MA02VOHAC&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Introduction to Data Compression (The Morgan Kaufmann Series in Multimedia Information and Systems)](https://www.amazon.co.uk/dp/0128094745/?coliid=I2GOYD0EOGLD50&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "miscellaneous" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

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

))


(setq hft-list '(

("[Advanced Quantitative Finance with C++ Paperback – 25 Jun 2014](https://www.amazon.co.uk/dp/1782167226/?coliid=I8BJLU8SV36A&colid=1YR893IZ003PC&psc=0&ref_=lv_ov_lig_dp_it )" "Alonso Peña" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Mastering Python for Finance Paperback – 29 Apr 2015](https://www.amazon.co.uk/Derivatives-Analytics-Python-Simulation-Calibration/dp/1119037999/ref=pd_bxgy_img_3?_encoding=UTF8&pd_rd_i=1119037999&pd_rd_r=99b66791-f55a-11e8-84fc-9f9314536756&pd_rd_w=SpLIl&pd_rd_wg=67XNl&pf_rd_i=desktop-dp-sims&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=466c8fd0-3653-4c9b-86fa-f9bc8fd2ae35&pf_rd_r=EV7XBRBE72WTPVZS0ZXY&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=EV7XBRBE72WTPVZS0ZXY )" "James Ma Weiming" "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Advances in Financial Machine Learning Hardcover – February 21, 2018](https://www.amazon.com/dp/1119482089/?coliid=I1C6GFDW77BWWE&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Marcos Lopez de Prado " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")
("[Professional Automated Trading: Theory and Practice 1st Edition](https://www.amazon.com/dp/1118129857/?coliid=I1Z2HWBB15Q2DP&colid=2R5QE46GC1OLG&psc=0&ref_=lv_ov_lig_dp_it )" "Eugene A. Durenard  " "--" "b✔" "bl✖" "th✔" "im✖" "f✔" "ee✔")

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
			     (length i )(eval max-length)))
))
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
  (format md (format nil "~~~:@<~A~>:@<~~A~~>|" (- max-length 1)) i)))
)

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
(gen-table info-retr-list cols "Information Retrieval and DB Systems")
(gen-table theory-cs-list cols "Theoretical CS")
