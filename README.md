# Nand to Tetris programming course 
This is a course for fundermetanl knowledge of computer architecture and system design.

After this course, you can totally build a computer from a scratch 


## What to learn in this course? 


### 1: Boolean Logic 

Some concepts in this chapter: 
- Boolean Algebra
    - And, or, ... 
- Gate Logic 
    - Primitive and Composite gates 
- Hardware Discription Language 
    - 

What we will build in this chapter is the basic logic gates from the `NAND` gate, includes: 
    - And, Not, Or, Xor 
    - Mutiplexer: use 3 input gate, use a  `selection bit` to select one of the other two inputs, call `data bits`.
    ```
    Chip name: Mux
    Inputs: a, b, sel
    Outputs: out
    Function: If sel=0 then out=a else out=b.
    ```
    - Demultiplexer: Perform the oposite of the `Multiplexer`. Take a sigle input and channels it to one of possible outputs according to the selector bits 
    ```
    Chip name: DMux
    Inputs: in, sel
    Outputs: a, b
    Function: If sel=0 then {a=in, b=0} else {a=0, b=in}
    ```


### 2: Boolean Arithmetic 

### 3: Sequential Logic 

### 4: Machine Language 

### 5 Computer Architecture 