.global fn3args
fn3args:

  movl $0, %eax            # One down, three to go!
  # receives three integers representing a trapezoid 
  # (length of one side, length of parallel side, height) and returns the area; 
  # returns 0 if there is a loss of accuracy or any input operand is less than zero.
  retq
