 .text
#################################################################################
#������ʵ�֣��ֽڵ�ַ0x200���ֵ�ַ0x80����ʼ��8���ֵ�Ԫ�Ľ�������,�˳������mars mips������������,����ʱ�뽫Mars Setting�е�Memory Configuration����ΪCompact��data at address 0
#�жϷ������1���ֵ�ַ0x88��ʼ��8���������ۼ�1
#�жϷ������2���ֵ�ַ0x90��ʼ��8���������ۼ�2
##################################################################################
 .text
sort_init:
 addi $sp,$sp,1024  #$sp init
 addi $s0,$0,-1
 addi $s1,$0,0
 sw $s0,512($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,512($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,512($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,512($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,512($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,512($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,512($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,512($s1)
 
 add $s0,$zero,0   
 addi $s1,$zero,28   #��������
sort_loop:
 lw $s3,512($s0)     
 lw $s4,512($s1)
 slt $t0,$s3,$s4
 beq $t0,$0,sort_next   #��������
 sw $s3, 512($s1)
 sw $s4, 512($s0)   
sort_next:
 addi $s1, $s1, -4   
 beq $s0, $s1,  sort_next1  
 beq $0,$0,sort_loop
sort_next1:
 addi $s0,$s0,4
 addi $s1,$zero,28
 beq $s0, $s1, ProgramEnd
 beq $0,$0,sort_loop
ProgramEnd:
 beq $0,$0,ProgramEnd  #��ѭ��
  
IntProgram1:
  addi $sp,$sp,8    #push registers  ��Ҫ������Щ�Ĵ����� �жϳ����õ��ļĴ���
  sw $s0,0($sp)
  sw $s1,4($sp)

  addi $s1,$0,0x240
  lw $s0,($s1)
  addi $s0,$s0,1
  sw $s0,($s1)
  sw $s0,4($s1)
  sw $s0,8($s1)
  sw $s0,12($s1)
  sw $s0,16($s1)
  sw $s0,20($s1)
  sw $s0,24($s1)
  sw $s0,28($s1)
  lw $s1,4($sp)   #pop registers
  lw $s0,0($sp)
  addi $sp,$sp,-8
  eret
IntProgram2:
  addi $sp,$sp,8    #push registers  ��Ҫ������Щ�Ĵ����� �жϳ����õ��ļĴ���
  sw $s0,0($sp)
  sw $s1,4($sp)

  addi $s1,$0,0x280
  lw $s0,($s1)
  addi $s0,$s0,-1
  sw $s0,($s1)
  sw $s0,4($s1)
  sw $s0,8($s1)
  sw $s0,12($s1)
  sw $s0,16($s1)
  sw $s0,20($s1)
  sw $s0,24($s1)
  sw $s0,28($s1)
  
  lw $s1,4($sp)   #pop registers
  lw $s0,0($sp)
  addi $sp,$sp,-8
  eret

