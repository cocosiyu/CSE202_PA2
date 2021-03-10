.global fn3args
fn3args:
  # edi length of one side
  # esi length of parallel side
  # edx height third argument

  # if x, y, z are smaller than 0 movl $0, %eax     retq 
  cmpl $0, %edi #check if x is negative
  jns .L2
  cmpl $0, %esi
  jns .L2
  cmpl $0, %edx
  jns .L2

  #movl $0, %eax   
  movl %edi, %eax
  addl %esi, %eax
  imull %edx, %eax
  sarl $1, %eax # (x+y) / 2 right shift
  testl	%eax, %eax
  je .L3
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
 
