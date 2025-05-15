# Lisp list

## list and plist
***list function***
```lisp
(list 1 2 3)
```

***plist (property-list) function***
- *plist* has a symbol(name) with each element.

**Creation of plist**
```lisp
(list :a 1 :b 2)
```

**Access an element in plist**
```lisp
(getf (list :a 1 :b 2) :a)
```

## push
- description
  - append an object item to a list.
- type
  - macro
- syntax
  - **push** item *place* => new-place-value
```lisp
(defvar *data* nil)
(push 'a *data*)
;; (A)
(push 'b *data*)
;; (B A)
(push (list 1 2) *data*)
;; ((1 2) B A)
```

## pop
- description
- type
- syntax
```lisp
(defvar *d* (list 'a 1 2 'b))
;; (A 1 2 B)
(pop *d*)
;; A
(pop *d*)
;; 1
(pop *d*)
;; 2
(pop *d*)
;; B
(pop *d*)
;; NIL
```


## remove-if, remove-if-not
- description
- type
  - function
- syntax
  - **remove-if** test sequence &key from-end start end count key => result-sequence
  - **remove-if-not** test sequence &key from-end start end count key => result-sequence
```lisp
;;; test object : evenp
;;; sequence = '(1 2 3 4)
(remove-if) #'evenp '(1 2 3 4)
(remove-if-not) #'evenp '(1 2 3 4)
```

## reverse
- type
- syntax
```lisp
(reverse '(1 2 3))
```
## rotatef
```lisp
(setf a 10)
(setf b 9)
(setf c 1)

(rotatef a b c)  ;; => NIL
(write a)   ;; 9
(write b)   ;; 1
(write c)   ;; 10

(rotatef a b c)  ;; => NIL
(write a)   ;; 1
(write b)   ;; 10
(write c)   ;; 9
```

## shiftf
```lisp
(setf a 10)
(setf b 9)
(setf c 1)

(shiftf a b c)  ;; => 10
(shiftf a b c)  ;; => 9
(shiftf a b c)  ;; => 1
```


## shiftf


# List splice
```lisp
`(list 1 2 ,(list 'a 'b))
;; => (LIST 1 2 (A B))
`(list 1 2 ,@(list 'a 'b))
;; => (LIST 1 2 A B)
```