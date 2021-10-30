$mod51
;===================================
;PROGRAM HIASAN LAMPU RUANG KERJA LED "MALVITOA" DAN SEVEN SEGMENT DENGAN MENGGUNAKAN MOTOR DC DAN PUSH BUTTON BERBASIS AT89C51
;NAMA: MUHAMMAD ALVITO ADITYA
;NIM : 1197070049
;KELAS : B2
;===================================

org      0h
 MOV P1,#00000000B   
 MOV P2,#00000001B
mulai:  mov     A,P3          
      cjne     A,#0FEh,tombol1
      mov      p1,a          
      mov      P0,#0c0h       
      sjmp     mulai
               
tombol1:
      cjne     A,#0FDh,tombol2
      mov      p1,a
      mov      P0,#0F9h
      sjmp     mulai
tombol2:
      cjne     A,#0FBh,tombol3
      mov      p1,a
      mov      P0,#0a4h
      sjmp     mulai
tombol3:
      cjne     A,#0F7h,tombol4
      mov      p1,a
      mov      P0,#0b0h
      sjmp     mulai
tombol4:
      cjne     A,#0EFh,tombol5
      mov      p1,a
      mov      P0,#99h
      sjmp     mulai
tombol5:
      cjne     A,#0DFh,tombol6
      mov      p1,a
      mov      P0,#92h
      sjmp     mulai
tombol6:
      cjne     A,#0BFh,tombol7
      mov      p1,a
      mov      P0,#82h
      sjmp     mulai
tombol7:
      cjne     A,#07Fh,mulai
      mov      p1,a
      mov      P0,#0F8h
      sjmp     mulai
      End