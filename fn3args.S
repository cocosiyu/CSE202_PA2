.global fn3args
fn3args:
  # edi length of one side
  # esi length of parallel side
  # edx height third argument

  

  #movl $0, %eax   
  movl %edi, %eax
  addl %esi, %eax
  sarl $1, %eax # (x+y) / 2 right shift
  imull %edx, %eax
  retq          # return the area (a+b)*c/2


  # receives three integers representing a trapezoid 
  # (length of one side, length of parallel side, height) and returns the area; 
  # returns 0 if there is a loss of accuracy or any input operand is less than zero.
 
