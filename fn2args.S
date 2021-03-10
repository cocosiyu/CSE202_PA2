.global fn2args
fn2args:
movl %edi, %eax ;   # val = x move the first argument into eax
cmpl %eax, %esi;    # compare eax with the second argument
jge .L1             # if y > x    esi > eax
subl %esi, %eax      # if x > y 
retq

.L1: 
  subl %eax, %esi # esi = esi - eax
  movl %esi, %eax # eax = y -x
  retq



