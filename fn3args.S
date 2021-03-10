.global fn3args
fn3args:
  # edi length of one side
  # esi length of parallel side
  # edx height third argument

  # check if inputs are 0
  cmpl $0, %edi #check if x is negative
  jns .L2
  cmpl $0, %esi
  jns .L2
  cmpl $0, %edx
  jns .L2 # return 0

 
  movl %edi, %eax # eax = x
  addl %esi, %eax # eax = x+y
  testl	%eax, %eax
  je .L3
  sarl $1, %eax # (x+y) / 2 right shift
  imull %edx, %eax 
  
  retq          # return the area (a+b)*c/2

.L2:
  movl $0, %eax   
  retq
.L3:
  movl $0, %eax   
  retq


  # receives three integers representing a trapezoid 
  # (length of one side, length of parallel side, height) and returns the area; 
  # returns 0 if there is a loss of accuracy or any input operand is less than zero.
 
