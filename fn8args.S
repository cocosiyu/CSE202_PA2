.global fn8args
fn8args:
# receives two arguments (the address of argc and the address of argv) and 
# returns the sum of the ASCII values of the characters in the arguments passed to the function. 
# While all the characters in all the arguments could be accumulated, 
# the 4th and 5th arguments represent the lower-bound and upper-bound of the arguments to be accumulated.
               
  xor %rax, %rax   # What does this do?

  retq
