# LOOP

## loop
- type
  - macro
- syntax
  - simple
    - **loop** compound-form* => result*
  - extended
    - **loop** [name-clause] {variable-clause}* {main-clause}* => result*
      - variable-clause
        - with-cluase
          - with var1 [type-spec] [= form1] {and var2 [type-spec] [= form2]}* 
        - initial-final
          - initially compound-form+ | finally compound-form+
        - for-as-clause
          - {for | as} *for-as-subclause* {and *for-as-subclause*}* 
          - for-as-subclause
            - for-as-arithmetic
              - var [type-spec] *for-as-arithmetic-subclause*
              - for-as-arithmetic-subclause
                - arithmetic-up
                  - [[{from | upfrom} form1 |   {to | upto | below} form2 |   by form3]]+
                - arithmetic-downto 
                  - [[{{from form1}}1  |   {{{downto | above} form2}}1  |   by form3]]
                - arithmetic-downfrom
                  - [[{{downfrom form1}}1  |   {to | downto | above} form2 |   by form3]]
            - for-as-in-list
              - var [type-spec] in form1 [by step-fun]
            - for-as-on-list
            - for-as-equals-then 
            - for-as-across
            - for-as-hash
            - for-as-package
      - main-cluase
        - unconditional
          - {do | doing} compound-form+ | return {form | it}
        - accumulation
          - list accumulation
            - {collect | collecting | append | appending | nconc | nconcing} {form | it}  
                     [into simple-var] 
          - numeric accumulation
            - {count | counting | sum | summing | } 
                         maximize | maximizing | minimize | minimizing {form | it} 
                        [into simple-var] [type-spec]
        - conditional
          - {if | when | unless} form selectable-clause {and selectable-clause}*  
               [else selectable-clause {and selectable-clause}*]  
               [end]
        - termination-test
          - while form | until form | repeat form | always form | never form | thereis form 
        - initial-final
- example
  - loop-simple.lisp
  - loop-for.lisp


## dotimes
- type
  - macro
- syntax
  - dotimes (var count-form [result-form]) declaration* {tag | statement}* => result*
- example
```
; Without result-form
> (dotimes (c 5) (write c))
01234
NIL
```
```lisp
; With result-form
(let ((result 0))
  (dotimes (i 5 result)
    (setf result (+ i result))
    (write result)
    (terpri)))
```
Output:
```
0
1
3
6
10
```


## dolist
- description
  - iterates a ***list*** object, produces a new list.
- type
  - macro
- syntax
  - **dolist**  (var list-form [result-form]) declaration* {tag | statement}* => ***result\****
- example

```lisp
(defvar *data* (list 1 2 3))
;; var = d
;; list-form = *data*
(dolist (d *data*) (format t "~A~%" d))

(dolist (d '(a b c)) (format t "~A~&" d))
```
