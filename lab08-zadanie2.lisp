;;zadanie 1
(defclass student ()
	((imie :initarg :imie :accessor student-imie)
	 (nazwisko :initarg :nazwisko :accessor student-nazwisko)
	 (album :initarg :album :accessor student-album)
	 (id-przedmiot :initarg :id-przedmiot :accessor student-id-przedmiot)
	 (semestr :initarg :semestr :accessor student-semestr)
	 (ocena :initarg :ocena :accessor student-ocena)
	 (termin :initarg :termin :accessor student-termin)
	)
)

(defmethod display-student ((s student))
	(format t "~A~%~A~%~A~%ID przedmiotu: ~A~%Semestr: ~A~%Ocena: ~A~%Termin: ~A~%"
        (student-imie s)
        (student-nazwisko s)
        (student-album s)
		(student-id-przedmiot s)
		(student-semestr s)
		(student-ocena s)
		(student-termin s)
	)
)

(defvar *lista* '())

(defun dodaj ()
	(let ((imie)(nazwisko)(album)(id-przedmiot)(semestr)(ocena)(termin))
		(format t "Podaj imie: ")
    	(finish-output)
        (setq imie (read))
		(format t "Podaj nazwisko: ")
    	(finish-output)
        (setq nazwisko (read))
		(format t "Podaj album: ")
    	(finish-output)
        (setq album (read))
		(format t "Podaj ID przedmiotu: ")
    	(finish-output)
        (setq id-przedmiot (read))
		(format t "Podaj semestr: ")
    	(finish-output)
        (setq semestr (read))
		(format t "Podaj ocene: ")
    	(finish-output)
        (setq ocena (read))
		(format t "Podaj termin: ")
    	(finish-output)
        (setq termin (read))
		(push (make-instance 'student
            :imie imie
            :nazwisko nazwisko
            :album album
			:id-przedmiot id-przedmiot
			:semestr semestr
			:ocena ocena
			:termin termin) *lista*)
	)
)
		  

(defun wypisz ()
	(loop for x in *lista*
		do (display-student x) 
	)
)

(dodaj)
(dodaj)
(dodaj)

(defun szukaj-album () ;szukanie po numerze albumu
	(let ((album))
		(format t "Podaj album: ")
    	(finish-output)
        (setq album (read))
		(dolist (s *lista*)
			(when (equal album (student-album s))
				(display-student s)
			)
		)
	)
)

(szukaj-album)

(defun szukaj-przedmiot () ;szukanie po id przedmiotu
	(let ((przedmiot))
		(format t "Podaj ID przedmiotu: ")
    	(finish-output)
        (setq przedmiot (read))
		(dolist (s *lista*)
			(when (equal przedmiot (student-id-przedmiot s))
				(display-student s)
			)
		)
	)
)
(szukaj-przedmiot)

(defun szukaj-semestr () ;szukanie po semestrze
	(let ((semestr))
		(format t "Podaj semestr: ")
    	(finish-output)
        (setq semestr (read))
		(dolist (s *lista*)
			(when (equal semestr (student-semestr s))
				(display-student s)
			)
		)
	)
)
(szukaj-semestr)


(print "  ")

(wypisz)
	