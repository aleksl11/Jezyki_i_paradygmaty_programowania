;;zadanie 1
(defclass ksiazka ()
	((tytul :initarg :tytul :accessor ksiazka-tytul)
	 (autor :initarg :autor :accessor ksiazka-autor)
	 (wydawnictwo :initarg :wydawnictwo :accessor ksiazka-wydawnictwo)
	 (rok-wydania :initarg :rok-wydania :accessor ksiazka-rok-wydania)
	 (isbn :initarg :isbn :accessor ksiazka-isbn)
	)
)

(defmethod display-ksiazka ((k ksiazka))
	(format t "Tytul: ~A~%Autor: ~A~%Wydawnictwo: ~A~%Rok wydania: ~A~%ISBN: ~A~%"
        (ksiazka-tytul k)
        (ksiazka-autor k)
        (ksiazka-wydawnictwo k)
		(ksiazka-rok-wydania k)
		(ksiazka-isbn k)
	)
)

(defparameter *ksiazka*
  (make-instance 'ksiazka
                 :tytul "xyz"
                 :autor "abc"
                 :wydawnictwo "qwerty"
				 :rok-wydania "2017"
				 :isbn "1234")
)				 


(defvar *lista* '())

(defun sprawdz (isbn)
	(let ((wynik "nie"))
	(loop for k in *lista*
	do (when (equal isbn (ksiazka-isbn k))
			(setq wynik "jest")
		))
	wynik
	)	
)

(defun dodaj ()
	(let ((tytul)(autor)(wydawnictwo)(rok-wydania)(isbn))
		(format t "Podaj tytul: ")
    	(finish-output)
        (setq tytul (read))
		(format t "Podaj autora: ")
    	(finish-output)
        (setq autor (read))
		(format t "Podaj wydawnictwo: ")
    	(finish-output)
        (setq wydawnictwo (read))
		(format t "Podaj rok wydania: ")
    	(finish-output)
        (setq rok-wydania (read))
		(format t "Podaj isbn: ")
    	(finish-output)
        (setq isbn (read))
		(if (equal "jest" (sprawdz isbn))
			(format t "Ksiazka o danym isbn juz jest w bibliotece")
			(push (make-instance 'ksiazka
                 :tytul tytul
                 :autor autor
                 :wydawnictwo wydawnictwo
				 :rok-wydania rok-wydania
				 :isbn isbn) *lista*)
		)
	)
)
		  
(defun usun (isbn)
	(when (equal "jest" (sprawdz isbn))
		(dolist (item *lista*)
			(when (equal isbn (ksiazka-isbn item))
				(setq *lista* (delete item *lista*))
			)
		)
	)
)

(defun wypisz ()
(loop for x in *lista*
	do (display-ksiazka x) )
)

(dodaj)
(dodaj)
(dodaj)

(wypisz)
(print "  ")
(usun 1234)
(wypisz)
	
(print (sprawdz 1234))
(print (sprawdz 4321))