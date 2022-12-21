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
    - Multi-bit version of Basic gates 
- Hardware Discription Language 
    

What we will build in this chapter is the basic logic gates from the `NAND` gate, includes: </BR>
- `And`, `Not`, `Or`, `Xor` 
- `Mutiplexer`: use 3 input gate, use a  **Selection bit** to select one of the other two inputs, call **Data bit**.
    ```
    Chip name: Mux
    Inputs: a, b, sel
    Outputs: out
    Function: If sel=0 then out=a else out=b.
    ```
- `Demultiplexer`: Perform the oposite of the `Multiplexer`. Take a sigle input and channels it to one of possible outputs according to the selector bits 
    ```
    Chip name: DMux
    Inputs: in, sel
    Outputs: a, b
    Function: If sel=0 then {a=in, b=0} else {a=0, b=in}
    ```


***The multibit versions of Basis gates*** 
Multi-bit operation are designed to handle multi-bit arrays called "buses". 

- `Multi-Bit And`, `Multi-Bit Not`  
- `Multi-Bit Or`
    ```
    Chip name: Or16
    Inputs: a[16], b[16]
    Outputs: out[16]
    Function: For i=0..15 out[i]=Or(a[i],b[i]).
    ```
- `Multi-Bit Multiplexor`: Same as the sigle bit multiplexer. 
    ```Chip name: Mux16
    Inputs: a[16], b[16], sel
    Outputs: out[16]
    Function: If sel=0 then for i=0..15 out[i]=a[i]
            else for i=0..15 out[i]=b[i].
    ```


***Multi-way versions of Basic Gates***
</BR> Multi-way take 

- `Multi-way or`
    ```
    Chip name: Or8Way
    Inputs: in[8]
    Outputs: out
    Function: out=Or(in[0],in[1],...,in[7]).
    ```

- `Multi-way/Multi-bit Multiplexer`
An m-way n-bit multiplexor selects one of ***m n-bit input buses***  and outputs it to a single ***n-bit output bus***.
    ```
    Chip name: Mux4Way16
    Inputs: a[16], b[16], c[16], d[16], sel[2]
    Outputs: out[16]
    Function: If sel=00 then out=a else if sel=01 then out=b
    else if sel=10 then out=c else if sel=11 then out=d Comment: The assignment operations mentioned above are all
            16-bit. For example, "out=a" means "for i=0..15
            out[i]=a[i]".
    ```

- `Multi-Way/Multi-Bit Demultiplexor`
An m-way n-bit demultiplexor (figure 1.11) channels a single n-bit input into one of m possible n-bit outputs. The selection is specified by a set of k control bits, where k 1⁄4 log2 m.
    ```
    Chip name: DMux4Way
    Inputs: in, sel[2]
    Outputs: a, b, c, d
    Function: If sel=00 then {a=in, b=c=d=0}
            else if sel=01 then {b=in, a=c=d=0}
            else if sel=10 then {c=in, a=b=d=0}
            else if sel=11 then {d=in, a=b=c=0}.
    ```

### 2: Boolean Arithmetic 

### 3: Sequential Logic 

### 4: Machine Language 

### 5 Computer Architecture 



## note 
https://github.com/tchapi/markdown-cheatsheet/blob/master/README.md