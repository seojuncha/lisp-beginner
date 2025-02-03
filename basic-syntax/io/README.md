# File I/O

## with-open-file
- type
  - macro
- syntax
  - **with-open-file** (stream filespec options*) declaration* form*
=> results



### Write
```lisp
;; stream object = out
(with-open-file (out "testfile" :direction :output) 
  (dolist (d (list 1 2 3))
    (print d out))
)
```
```shell
$ cat testfile

1
2
3
```

### Read
```lisp
(with-open-file (in "testfile") 
  ()
)

```