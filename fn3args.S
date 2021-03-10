.global fn3args
fn3args:
  # edi length of one side
  # esi length of parallel side
  # edx height third argument

  #movl $0, %eax   
  movl (%edi, %esi), %eax
  sall $2, %eax # (x+y) / 2
  imull %edx, %eax

  retq          # return the area (a+b)*c/2


  # receives three integers representing a trapezoid 
  # (length of one side, length of parallel side, height) and returns the area; 
  # returns 0 if there is a loss of accuracy or any input operand is less than zero.
 
