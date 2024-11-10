# Collection
There are two types of Common Lisp collections as other programming language.

- array type
- key-value type

No matter what collection is used, I think, the important thing is CRUD in a real world. For example, how to create a *vector* in Common Lisp? how to access an element? Is it same memory structure like C? Is there any build-in functions to maange those?

## array type collection
- vector
- list
- tuple

### vector
***vector*** in Common Lisp can be *fixed-size* and also *resizable*.
Fixed-size vector is like a C-style language's array.
```c
#include <stdio.h>
void main(void) {
  int arr[3];    /* Size 3 array */
  arr[0] = 1;
  arr[1] = 2;
  arr[2] = 3;
  printf("the second element: %d\n", arr[1]);
}
```
Resizable array is like a Python's list or a C++'s vector.
```python
my_arr = [1, 2, 3]
print(my_list)          # [1, 2, 3]
print(my_list[-1])      # 3
print(my_list[1])       # 2
my_list.append(9)       # [1, 2, 3, 9]
print(my_list[-1])      # 9
```

```c++
#include <vector>
void main() {
  std::vector<int> vec = {1, 2, 3};
  vec.push_back(9);
  // ...
}
```

### Creation

There are three ways of creating a *vector*.

- '#'
- [***vector***](https://www.lispworks.com/documentation/HyperSpec/Body/f_vector.htm) function
- [***make-array***](https://www.lispworks.com/documentation/HyperSpec/Body/f_mk_ar.htm#make-array) function

```lisp
CL-USER> #(1 2)
#(1 2)

CL-USER> (type-of #(1 2))
(SIMPLE-VECTOR 2)

CL-USER> (vector 'a 'b 'c)
#(1 2 3)

CL-USER> (type-of (vector 'a 'b 'c))
(SIMPLE-VECTOR 3)

CL-USER> (make-array 3)
#(NIL NIL NIL)
```

Okay, I know. What's difference between them? Why there are three ways to do that?<br>
Compare the *vector* function with '*#*'

```lisp
CL-USER> (vector (+ 1 2) 3 3)
#(3 3 3)

CL-USER> #((+ 1 2) 3 3)
#((+ 1 2) 3 3)
```
'*#*' is to represent a [literal](https://en.wikipedia.org/wiki/Literal_(computer_programming)) vector, so the arguments is not evaluated eventhough it looks like a form.

#### Modifying an element
In order to access an element of *vector*, ***elt***(ELmenT) can be used.
```lisp
CL-USER> (setf vec (vector 1 2 3))    ; vector can be creatd by # also.
#(1 2 3)
CL-USER> (setf (elt vec 0) 9)
9
CL-USER> vec
#(9 2 3)
```

#### Resizable Test
I use the funcion, [***vector-push***](https://www.lispworks.com/documentation/HyperSpec/Body/f_vec_ps.htm#vector-push) .
```lisp
CL-USER> (setf vec (vector 1 2 3))
#(1 2 3)
CL-USER> (vector-push 7 vec)
*** - VECTOR-PUSH: vector #(1 2 3) has no fill pointer
```
Can you see it? What is the fill pointer as the erro said? Before futher of the fill pointer, *vector* is a fixed-size array actually. So it isn't available to change that size that is set by creation. Now, time to talk about the last vector fuction, *make-array*.

### make-array's dimension
```lisp
CL-USER> (make-array 3)      ; one-dimension array
#(NIL NIL NIL)

CL-USER> (make-array '(3 3))      ; two-dimension array 
#2A((NIL NIL NIL) (NIL NIL NIL) (NIL NIL NIL))

CL-USER> (make-array '(4 2 3))    ; three-dimension array!
#3A(((NIL NIL NIL) (NIL NIL NIL)) ((NIL NIL NIL) (NIL NIL NIL)) ((NIL NIL NIL) (NIL NIL NIL)) ((NIL NIL NIL) (NIL NIL NIL)))
```
TODO: compare with numpy functions in Python if interested.



### make-arary's keyword arguments
1. initial element
```lisp
CL-USER> 
```
2. initial-contentts
```lisp
CL-USER> 
```
3. fill-pointer
```lisp
CL-USER> 
```

#### common vector operations

### Access
```lisp
CL-USER> (setf vec (vector 1 2 3))   ; create a vector, #(1, 2, 3)
#(1 2 3)
CL-USER> (elt vec 0)                 ; access the first element
1
```

### list

### tuple


## key-value type collection
- hash table
- associative array
- map
- dictionary