# File I/O

### with-open-file
- type
  - macro
- syntax
  - **with-open-file** (stream filespec options*) declaration* form* => ***results***

```lisp

```

### open
- syntax
  - **open** filespec *&key direction element-type if-exists if-does-not-exist external-format* => ***stream***

```lisp
(setf instream (open "my-file-path"))  ;; instream is a Lisp stream object

```

### close
- syntax
  - **close** stream *&key abort* => ***result***

```lisp
(close instream)

```

### write
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