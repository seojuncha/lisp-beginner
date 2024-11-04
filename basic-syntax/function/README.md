# Common Lisp Functions
Basic form

    (defun function-name (parameters)
      "optional doc string"
      body-form*)

Note that, 'defun' is a built-in Lisp macro to define a function.

## parameters*
'*' means that the number of parameter can be greater than or equal to one.
For example, 

    CL-USER> (list 1)  ; use one parameter, 1.
    (1)

    CL-USER> (list 1 2) ; use two parameters, 1, 2.
    (1 2)

## body-form*
All forms in body-form are evaluted, then the last form is returned unless there is 'return-from' before the last form.

## doc string
String literal to describe what is this function.

Some examples

    (defun plus (a b)                     ; a and b are parameters.
    "This is simple plus function"        ; okay, this is what is this doing.
      (+ a b))                            ; 

    (plus 1 2)          ; call a function, plus with arguments, 1 and 2.


## Define a function in REPL.
    CL-USER> (defun foo () (format t "it is foo"))
    FOO

    CL-USER> (defun foo-foo () (format t "two foo"))
    FOO-FOO

What returned text means? Why it is upper case always? What happend when I define a function?
To know this, we have to know how REPL deals with symbols.
