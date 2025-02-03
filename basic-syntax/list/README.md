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
(push 'b *data*)
(push (list 1 2) *data*)
```

## dolist
- description
  - looping a **list** object, produces a new list.
- type
  - macro
- syntax
  - **dolist**  (var list-form [result-form]) declaration* {tag | statement}*
=> result*

```lisp
(defvar *data* (list 1 2 3))
;; var = d
;; list-form = *data*
(dolist (d *data*) (format t "~A~%" d))

(dolist (d '(a b c)) (format t "~A~&" d))
```

