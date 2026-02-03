Comment !
Description: Using the AddTwo program from Section 3.2 as a
reference, write a program that calculates the following expression, 
using registers: A = (A + B) - (C + D). Assign integer values to the EAX,
EBX, ECX, and EDX registers.
!


INCLUDE Irvine32.inc

  .data                          ;data decleration

  
  .code                          ;code decleration

  
  main PROC                      ;main method starts
  ; Assign integer values
  mov eax, 10 ; A = 10
  mov ebx, 5 ; B = 5 
  mov ecx, 3 ; C = 3
  mov edx, 2 ; D = 2
  
  ; ( A + B )
  add eax, ebx ; EAX = A + B
  
  ; ( C + D )
  add ecx, edx ; ECX = C + D
  
  ; ( A + B ) - ( C + D )
  sub eax, ecx ; EAX = final result is 0000000A

     call DumpRegs
  
     exit                        ;Exit program
  main ENDP
  END main