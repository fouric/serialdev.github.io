
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
