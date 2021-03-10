.global fn2args
fn2args:
mov %edi, %eax ;
cmp %eax, %edi;
jge 1f
xchg %eax, %edi
1: sub %eax, %edi
