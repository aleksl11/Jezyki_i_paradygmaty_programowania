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

(defun dodaj ((k ksiazka))
		(push k *lista*)
)

(defun sprawdz (isbn)
	(loop for k in *lista*
	do (when (equal isbn (ksiazka-isbn k))
			(print "jest")
		))
)

		  
(defun usun (isbn)
	(when (equal "jest" (sprawdz isbn))
		(loop for k in *lista*
			(when (equal isbn (ksiazka-isbn k))
				;; dokonczycc!!!!
			)
		)
	)
)

(loop for x in *lista*
	do (display-ksiazka x) )
	
