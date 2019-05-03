;Umair Habib
;Brick_Breaker Game


[org 0x0100]
call startpage
call barfirst
	call scoreincrement
	call printcaller
	jmp start
score: dw -10
timercount:db 0






press1: db 'Press any key to Exit',0
over: db 'Game Over',0

gamer: db 0
boxcount: db 0
boxcount1: db 0
boxcount2: db 0
oldisr: dd 0
boardcolor: db 0x40
boardbool2: db 0
Boardposition: dw 0x171B,0x171C,0x171D,0x171E,0x171F,0x1720,0x1721,0x1722,0x1723,0x1724,0x171B,0x171C,0x171D,0x171E,0x171F,0x1720,0x1721,0x1722,0x1723,0x1724,0x171B,0x171C,0x171D,0x1724
flag: db 0
ballrow:db 0x0C
ballcol: db 0x28
ballrowspace:db 0x0C
ballcolspace: db 0x28
aballrow:db 0x0D
aballcol: db 0x28
ball: dw 0x01
counter: db 0
flag1: db 0
spaceflag: db 0
rowflag: db 0
colflag: db 0
midflag: db 0
rightcolflag: db 0
leftcolflag: db 0
boardleft: db 0
boardright: db 0
life: db '321'
gamecounter: db 0
boolbox1:db 0
box1: dw 0x0101,0x0102,0x0103,0x0104,0x0105,0x0106,0x0107,0x0108,0x0109,0x010A,0x010B,0x010C,0x0201,0x0202,0x0203,0x0204,0x0205,0x0206,0x0207,0x0208,0x0209,0x020A,0x020B,0x020C
boolbox2:db 0
box2: dw 0x010E,0x010F,0x0110,0x0111,0x0112,0x0113,0x0114,0x0115,0x0116,0x0117,0x0118,0x0119,0x020E,0x020F,0x0210,0x0211,0x0212,0x0213,0x0214,0x0215,0x0216,0x0217,0x0218,0x0219
boolbox3:db 0
box3: dw 0x011B,0x011C,0x011D,0x011E,0x011F,0x0120,0x0121,0x0122,0x0123,0x0124,0x0125,0x0126,0x021B,0x021C,0x021D,0x021E,0x021F,0x0220,0x0221,0x0222,0x0223,0x0224,0x0225,0x0226
boolbox4:db 0
box4: dw 0x0128,0x0129,0x012A,0x012B,0x012C,0x012D,0x012E,0x012F,0x0130,0x0131,0x0132,0x0133,0x0228,0x0229,0x022A,0x022B,0x022C,0x022D,0x022E,0x022F,0x0230,0x0231,0x0232,0x0233
boolbox5:db 0
box5: dw 0x0135,0x0136,0x0137,0x0138,0x0139,0x013A,0x013B,0x013C,0x013D,0x013E,0x013F,0x0140,0x0235,0x0236,0x0237,0x0238,0x0239,0x023A,0x023B,0x023C,0x023D,0x023E,0x023F,0x0240
boolbox6:db 0
box6: dw 0x0142,0x0143,0x0144,0x0145,0x0146,0x0147,0x0148,0x0149,0x014A,0x014B,0x014C,0x014D,0x0242,0x0243,0x0244,0x0245,0x0246,0x0247,0x0248,0x0249,0x024A,0x024B,0x024C,0x024D
color1: db 0x10      ;blue
		;;;;;;;;;;;;;;;;;;;;;;;;;;;

boolbox7:db 0
box7: dw 0x0401,0x0402,0x0403,0x0404,0x0405,0x0406,0x0407,0x0408,0x0409,0x040A,0x040B,0x040C,0x0501,0x0502,0x0503,0x0504,0x0505,0x0506,0x0507,0x0508,0x0509,0x050A,0x050B,0x050C
boolbox8:db 0
box8: dw 0x040E,0x040F,0x0410,0x0411,0x0412,0x0413,0x0414,0x0415,0x0416,0x0417,0x0418,0x0419,0x050E,0x050F,0x0510,0x0511,0x0512,0x0513,0x0514,0x0515,0x0516,0x0517,0x0518,0x0519
boolbox9:db 0
box9: dw 0x041B,0x041C,0x041D,0x041E,0x041F,0x0420,0x0421,0x0422,0x0423,0x0424,0x0425,0x0426,0x051B,0x051C,0x051D,0x051E,0x051F,0x0520,0x0521,0x0522,0x0523,0x0524,0x0525,0x0526
boolbox10:db 0
box10: dw 0x0428,0x0429,0x042A,0x042B,0x042C,0x042D,0x042E,0x042F,0x0430,0x0431,0x0432,0x0433,0x0528,0x0529,0x052A,0x052B,0x052C,0x052D,0x052E,0x052F,0x0530,0x0531,0x0532,0x0533
boolbox11:db 0
box11: dw 0x0435,0x0436,0x0437,0x0438,0x0439,0x043A,0x043B,0x043C,0x043D,0x043E,0x043F,0x0440,0x0535,0x0536,0x0537,0x0538,0x0539,0x053A,0x053B,0x053C,0x053D,0x053E,0x053F,0x0540
boolbox12:db 0
box12: dw 0x0442,0x0443,0x0444,0x0445,0x0446,0x0447,0x0448,0x0449,0x044A,0x044B,0x044C,0x044D,0x0542,0x0543,0x0544,0x0545,0x0546,0x0547,0x0548,0x0549,0x054A,0x054B,0x054C,0x054D
color2: db 0x20     ;green
		;;;;;;;;;;;;;;;;;;;;;;;;;


boolbox13:db 0
box13: dw 0x0701,0x0702,0x0703,0x0704,0x0705,0x0706,0x0707,0x0708,0x0709,0x070A,0x070B,0x070C,0x0801,0x0802,0x0803,0x0804,0x0805,0x0806,0x0807,0x0808,0x0809,0x080A,0x080B,0x080C
boolbox14:db 0
box14: dw 0x070E,0x070F,0x0710,0x0711,0x0712,0x0713,0x0714,0x0715,0x0716,0x0717,0x0718,0x0719,0x080E,0x080F,0x0810,0x0811,0x0812,0x0813,0x0814,0x0815,0x0816,0x0817,0x0818,0x0819
boolbox15:db 0
box15: dw 0x071B,0x071C,0x071D,0x071E,0x071F,0x0720,0x0721,0x0722,0x0723,0x0724,0x0725,0x0726,0x081B,0x081C,0x081D,0x081E,0x081F,0x0820,0x0821,0x0822,0x0823,0x0824,0x0825,0x0826
boolbox16:db 0
box16: dw 0x0728,0x0729,0x072A,0x072B,0x072C,0x072D,0x072E,0x072F,0x0730,0x0731,0x0732,0x0733,0x0828,0x0829,0x082A,0x082B,0x082C,0x082D,0x082E,0x082F,0x0830,0x0831,0x0832,0x0833
boolbox17:db 0
box17: dw 0x0735,0x0736,0x0737,0x0738,0x0739,0x073A,0x073B,0x073C,0x073D,0x073E,0x073F,0x0740,0x0835,0x0836,0x0837,0x0838,0x0839,0x083A,0x083B,0x083C,0x083D,0x083E,0x083F,0x0840
boolbox18:db 0
box18: dw 0x0742,0x0743,0x0744,0x0745,0x0746,0x0747,0x0748,0x0749,0x074A,0x074B,0x074C,0x074D,0x0842,0x0843,0x0844,0x0845,0x0846,0x0847,0x0848,0x0849,0x084A,0x084B,0x084C,0x084D
color3: db 0x40       ;red
		;;;;;;;;;;;;;;;;;;;;;;;;;;;
barfirst:
pusha
 mov si,0
			  abc:
              mov ah, 0x13 ; service 13 - print string
			  mov al, 0 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 0x40 ; normal attrib
			  mov cx, 1 ; length of string
			  mov dx,[Boardposition+si]
			  push cs
			  pop es ; segment of string
			  mov bp, ' ' ; offset of string
			  int 0x10 ; call BIOS video service
              add si,2
			  cmp si,48
			  jne abc
			  popa
			  ret
printer:
		  push bp
			  mov bp,sp
			  pusha
			  mov si,0
loop1:
		  mov bx,[bp+4]
		  mov dx,[bx+si]
		  add si,2
			  mov ah, 0x13 ; service 13 - print string
			  mov al, 0 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, [bp+6] ; normal attrib
			  mov cx, 1 ; length of string
			  push bp
			  push cs
			  mov bp,' ' ; offset of string
			  pop es ; segment of string
			  int 0x10 ; call BIOS video service
			  pop bp
			  cmp si,48
			  jne loop1
			  popa
			  pop bp
			  ret 

b1:               ;position of box1
				  push box1   
				  jmp back
b2:
		  push box2 
			  jmp back
b3:
		  push box3   
			  jmp back
b4:
		  push box4  
			  jmp back
b5:
		  push box5  
			  jmp back
b6:
		  push box6   
			  jmp back
b7:            
		  push box7   
			  jmp back
b8:
		  push box8 
			  jmp back
b9:
		  push box9   
			  jmp back
b10:
		  push box10  
			  jmp back
b11:
		  push box11  
			  jmp back
b12:
		  push box12   
			  jmp back
b13:               
		  push box13   
			  jmp back
b14:
		  push box14 
			  jmp back
b15:
		  push box15
			  jmp back
b16:
		  push box16  
			  jmp back
b17:
		  push box17  
			  jmp back
b18:
		  push box18  
			  jmp back

firstlinecolor:
		  push  word[color1]  
		  jmp l1color


secondlinecolor:
		  push word[color2]    
		  jmp l1color


thirdlinecolor:
		  push word[color3]   
		  jmp l1color

printcaller:
		  pusha
			  mov cx,1
label1:
		  cmp cx,6
			  jle firstlinecolor
			  cmp cx,12
			  jle secondlinecolor
			  cmp cx,18
			  jle thirdlinecolor
l1color:
		  cmp cx,1
			  je b1
			  cmp cx,2
			  je b2
			  cmp cx,3
			  je b3
			  cmp cx,4
			  je b4
			  cmp cx,5
			  je b5
			  cmp cx,6
			  je b6
			  cmp cx,7
			  je b7
			  cmp cx,8
			  je b8
			  cmp cx,9
			  je b9
			  cmp cx,10
			  je b10
			  cmp cx,11
			  je b11
			  cmp cx,12
			  je b12
			  cmp cx,13
			  je b13
			  cmp cx,14
			  je b14
			  cmp cx,15
			  je b15
			  cmp cx,16
			  je b16
			  cmp cx,17
			  je b17
			  cmp cx,18
			  je b18


back:
		  call printer
			  inc cx
			  pop bx
			  pop dx
			  cmp cx,18
			  jle label1
			  popa
			  ret 

			  ;; Bar Code


kbisr:
		      pusha
			
    			mov ax,0
	
           	in al,0x60
            bar2:
			cmp al, 0x4d
			  jz boardprint
			  cmp al,0x4b
			  jz boardprint1
			  jmp end11
boardprint:
		  mov byte[boardbool2],1
boardprint1:
		  ;mov byte[boardbool2],0
			  mov ax, word[cs:boardcolor] 
		  mov cx, Boardposition
			  push ax
			  push cx
			  call printer1
			  pop cx 
			  pop ax
end11:
		  popa
			  jmp far [cs:oldisr]

partner1: db 'UMAIR HABIB (L16-4348)',0
partner2: db 'MOIZ AHMED FARASAT (L16-4349)',0
loader:db 'Loading:',0
press: db 'Press Escape to Continue',0

startpage:
		  pusha
			  MOV AH, 06h    ; Scroll up function
			  XOR AL, AL     ;
		  XOR CX, CX     ; Upper left corner CH=row, CL=column
			  MOV DX, 184FH  ; lower right corner DH=row, DL=column 
			  MOV BH, 45h   ; background color of startpage
			  INT 10H ;video BIOS

			  mov ah, 0x13 ; service 13 - print string
			  mov al, 1 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 75 ; normal attrib
			  mov cx, 22 ; length of string
			  mov dx,0x1022
			  push cs
			  pop es ; segment of string
			  mov bp, partner1 ; offset of string
			  int 0x10 ; call BIOS video service


			  mov ah, 0x13 ; service 13 - print string
			  mov al, 1 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 75 ; normal attrib
			  mov cx, 29 ; length of string
			  mov dx,0x1122
			  push cs
			  pop es ; segment of string
			  mov bp, partner2 ; offset of string
			  int 0x10 ; call BIOS video service

			  mov ah, 0x13 ; service 13 - print string
			  mov al, 1 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 75 ; normal attrib
			  mov cx, 8 ; length of string
			  mov dx,0x1322
			  push cs
			  pop es ; segment of string
			  mov bp, loader ; offset of string
			  int 0x10 ; call BIOS video service

			  push 0xb800
			  pop es
			  mov ah,75
			  mov al,178
			  mov word[es:1000],ax
			  mov word[es:1002],ax
			  mov word[es:1004],ax
			  mov word[es:1006],ax
			  mov word[es:1008],ax
			  mov word[es:1010],ax
			  mov word[es:1160],ax
			  mov word[es:1172],ax
			  mov word[es:1320],ax
			  mov word[es:1332],ax
			  mov word[es:1480],ax
			  mov word[es:1482],ax
			  mov word[es:1484],ax
			  mov word[es:1486],ax
			  mov word[es:1488],ax
			  mov word[es:1490],ax
			  mov word[es:1640],ax
			  mov word[es:1652],ax
			  mov word[es:1800],ax
			  mov word[es:1812],ax
			  mov word[es:1960],ax
			  mov word[es:1962],ax
			  mov word[es:1964],ax
			  mov word[es:1966],ax
			  mov word[es:1968],ax
			  mov word[es:1970],ax
			  mov al,'R'
			  mov word[es:1974],ax
			  mov al,'I'
			  mov word[es:1976],ax
			  mov al,'C'
			  mov word[es:1978],ax
			  mov al,'K'
			  mov word[es:1980],ax
			  mov al,178
			  mov word[es:1050],ax
			  mov word[es:1052],ax
			  mov word[es:1054],ax
			  mov word[es:1056],ax
			  mov word[es:1058],ax
			  mov word[es:1060],ax
			  mov word[es:1210],ax
			  mov word[es:1222],ax
			  mov word[es:1370],ax
			  mov word[es:1382],ax
			  mov word[es:1530],ax
			  mov word[es:1532],ax
			  mov word[es:1534],ax
			  mov word[es:1536],ax
			  mov word[es:1538],ax
			  mov word[es:1540],ax
			  mov word[es:1690],ax
			  mov word[es:1702],ax
			  mov word[es:1850],ax
			  mov word[es:1862],ax
			  mov word[es:2010],ax
			  mov word[es:2012],ax
			  mov word[es:2014],ax
			  mov word[es:2016],ax
			  mov word[es:2018],ax
			  mov word[es:2020],ax
			  mov al,'R'
			  mov word[es:2024],ax
			  mov al,'E'
			  mov word[es:2026],ax
			  mov al,'A'
			  mov word[es:2028],ax
			  mov al,'K'
			  mov word[es:2030],ax
			  mov al,'E'
			  mov word[es:2032],ax
			  mov al,'R'
			  mov word[es:2034],ax
			  mov ah,75
			  mov al,178
			  mov cx, 15
			  mov di,3126

loading:
		  mov bx,0xffff
			  call delay
			  mov bx,0xffff
			  call delay
			  mov bx,0xffff
			  call delay
			  mov bx,0xffff
			  call delay
			  mov word[es:di],ax
			  add di,2
			  loop loading


			  mov ah, 0x13 ; service 13 - print string
			  mov al, 1 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 75 ; normal attrib
			  mov cx, 24 ; length of string
			  mov dx,0x1516
			  push cs
			  pop es ; segment of string
			  mov bp, press ; offset of string
			  int 0x10 ; call BIOS video service

enter1:
		  mov ah,0
			  int 16h
			  cmp al,27            ;waits for escape key
			  jne enter1

			  mov ah,0h
			  mov al,3h
			  int 10h            ;this will clear the screen

			  popa
			  ret

printer1:

		  push bp
			  mov bp,sp
			  pusha
			  mov ax,0
			  mov si,0
barprinting:
		  mov bx,[bp+4]
		  mov dx,[bx+si]

		  cmp byte[boardbool2],1
			  jz out1
			  jmp go1
out1:
		  cmp word[bx+46],0x174f
			  je out2
			  jmp move1
go1:
		  cmp  dx,0x1700
			  je out2
move1:

		  mov bx,Boardposition
			  cmp byte[boardbool2],1
			  jnz r2
			  add dl,1
			  jmp r3
r2:
		  sub dl,1
r3:
		  mov word [bx+si],dx


			  add si,2
			  mov ah, 0x13 ; service 13 - print string
			  mov al, 0 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, [bp+6] ; normal attrib
			  mov cx, 1 ; length of string
			  push bp
			  push cs
			  mov bp,' ' ; offset of string
			  pop es ; segment of string
			  int 0x10 ; call BIOS video service
			  pop bp
			  cmp si,48
			  jne barprinting

			  mov si,46
space1:
		  cmp byte[boardbool2],0
			  jz ls1

ls:
		  mov bx,[bp+4]
		  mov dx,[bx+0]
		  sub dl,1
			  jmp ls2
ls1:
		  mov bx,[bp+4]
		  mov dx,[bx+si]
		  add dl,1
ls2:
		  add si,2
			  mov ah, 0x13 ; service 13 - print string
			  mov al, 0 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 7 ; normal attrib
			  mov cx,1; length of string
			  push bp
			  push cs
			  mov bp,' ' ; offset of string
			  pop es ; segment of string
			  int 0x10 ; call BIOS video service
			  pop bp
			  cmp si,48
			  jne ls1
out2:
		  mov byte[boardbool2],0
			  popa
			  pop bp
			  ret 

kbisr1:
		  pusha
			  cmp byte [cs:gamer],18
			  je ter1
			  cmp byte[cs:gamecounter],3
			  je ter1
			  inc byte[cs:timercount]
		  inc byte[counter]
		  cmp byte[cs:timercount],18
			  je incsec
secback:
		  cmp byte[cs:sec],59
			  je incmin
minback:
		  cmp byte [counter],3
			  jne ter
			  mov ax,0x10
			  push ax
			  mov bx,ballrow
			  push bx
			  mov di,ballcol
			  push di
			  call printer2
			  pop di
			  pop bx
			  pop ax
			  jmp ter
ter1:
			  call Endpage
			  
		  mov byte[cs:gamer],0
ter:
		  popa
			  mov al,0x20
			  out 0x20,al
			  iret
sec: db 0
min: db 0
incsec:
		  inc byte[cs:sec]
		  mov byte[cs:timercount],0
			  jmp secback

incmin:
		  inc byte[cs:min]
		  mov byte[cs:sec],0
			  jmp minback

printer2:
		  mov byte[counter],1
			  push bp
			  mov bp,sp
			  pusha
			  mov ax,0
			  mov ax,0xb800
			  mov es,ax
			  mov ah,0x04
			  ;mov al,byte[cs:life]
		  mov al,0
			  mov al,25
			  mov di,3840
			  mov byte[es:di],'L'
			  mov byte[es:di+2],'I'
			  mov byte[es:di+4],'F'
			  mov byte[es:di+6],'E'
			  mov al,byte[life]
		  mov byte[es:di+10],al
			  mov ah,0x07
			  mov di,3950
			  mov byte[es:di],'T'
			  mov byte[es:di+2],'I'
			  mov byte[es:di+4],'M'
			  mov byte[es:di+6],'E'
			  mov byte[es:di+8],'R'
			  mov al,[cs:min]
		  add al,0x30
			  mov byte [es:di+12],al
			  mov byte [es:di+14],':'
			  mov al,[cs:sec]
		  mov dl,10
			  mov ah,0
			  div dl
			  mov cl,ah
			  mov ah,0x07
			  add al,0x30
			  mov byte [es:di+16],al
			  add cl,0x30
			  mov byte [es:di+18],cl
space23:
		  cmp byte[cs:flag],1
			  je inn
			  jmp inn2
inn:
		  inc dh
inn2:
		  dec dh
			  ;dec dl
			  mov dh,byte[cs:ballrowspace]
		  mov dl,byte[cs:ballcolspace]
		  mov ah, 0x13 ; service 13 - print string
			  mov al, 0 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 0x07; normal attrib
			  mov cx, 1 ; length of string
			  push bp
			  push cs
			  mov bp," " ; offset of string
			  pop es ; segment of string
			  int 0x10 ; call BIOS video service
			  pop bp


			  mov si,0
			  ;loop1:
		  mov bx,[bp+6]
		  mov dh,byte[cs:ballrow]
		  mov bx,[bp+4]
		  mov dl,byte[cs:ballcol]
		  mov byte[cs:ballrowspace],dh
			  mov byte[cs:ballcolspace],dl



inn24:
		  cmp byte[cs:flag],1
			  je inn22
			  ;mov byte[cs:boardright],0
			  ;mov byte[cs:boardleft],0
			  inc byte[cs:ballrow]
		  cmp byte[cs:midflag],1
			  je mid11
			  cmp byte[cs:boardright],1
			  je rih1
			  cmp byte[cs:boardleft],1
			  je rih11

			  cmp byte[cs:rightcolflag],1
			  je right11
			  cmp byte[cs:leftcolflag],1
			  je left11
			  jmp rrrr

rih1:
		  inc byte [cs:ballcol]
		  jmp mid111
rih11:
		  dec byte [cs:ballcol]
		  jmp mid111
right11:
		  dec byte [cs:ballcol]
		  jmp mid111
left11:
		  inc byte [cs:ballcol]
		  jmp mid111
rrrr:
		  ;inc byte[cs:ballcol]
mid11:
		  jmp mid111


inn22:                               ;when row is decrementing
									 dec byte [cs:ballrow]
		  cmp byte[midflag],1
			  je mid111
			  cmp byte[cs:boardright],1
			  je br2
			  cmp byte[cs:boardleft],1
			  je brl

			  cmp byte[midflag],1
			  ;je mid111
			  cmp byte[rightcolflag],1
			  je rright
			  cmp byte[leftcolflag],1
			  je lleft

			  jmp rrr
br2:
		  inc byte [cs:ballcol]
		  jmp mid111
brl:
		  dec byte [cs:ballcol]
		  jmp mid111
lleft:
		  inc byte[cs:ballcol]
		  jmp mid111
rright:
		  dec byte [cs:ballcol]
		  jmp mid111
rrr:
		  inc byte[cs:ballcol]

mid111:




		  ;mov dx,word[ballposition]
		  add si,2
			  mov ah, 0x13 ; service 13 - print string
			  mov al, 0 ; subservice 01 – update cursor
			  mov bh, 0 ; output on page 0
			  mov bl, 7 ; normal attrib
			  mov cx, 1 ; length of string
			  push bp
			  push cs
			  mov bp,ball ; offset of string
			  pop es ; segment of string
			  int 0x10 ; call BIOS video service
			  pop bp
			  cmp dh,0x16
			  mov si,0
			  je bal
			  cmp dh,0x18
			  je inter1
			  jmp colcheck
bal:
		  mov byte[flag1],1
			  mov bx,Boardposition
			  mov cx,word[bx+si]
		  dec ch
			  cmp dx,cx
			  je bb
			  add si,2
			  jmp cont
bb:
		  sub byte[cs:ballrow],1
			  mov byte[flag],1
			  cmp si,8
			  je midf
			  cmp si,10
			  je midf
			  cmp si,0
			  je leftbo
			  cmp si,2
			  je leftbo
			  cmp si,4
			  je leftbo
			  cmp si,6
			  je leftbo

			  cmp si,12
			  je rightbo
			  cmp si,14
			  je rightbo
			  cmp si,16
			  je rightbo
			  cmp si,18
			  je rightbo
			  jmp az
inter1:
		  cmp dh,0x18
			  je end111
			  jmp colcheck
leftbo:
		  mov byte[cs:midflag],0
			  mov byte[cs:boardleft],1
			  mov byte[cs:boardright],0
			  jmp az

rightbo:
		  mov byte[cs:midflag],0
			  mov byte[cs:boardright],1
			  jmp az

midf:
		  mov byte[cs:midflag],1
az:
		  mov si,48
cont:
		  cmp si,48
			  jne bal
			  cmp  byte[cs:flag1],1
			  je inter
			  jmp colcheck
inter:
		  cmp byte[flag],0
			  je inter1
			  jmp colcheck

end111:
		  mov bx,life
			  mov ax,0xb800
			  mov es,ax
			  mov ah,0x07
			  mov al,byte[bx]
		  dec byte[life]
		  inc byte[gamecounter]
		  mov di,3840
			  mov byte[es:di+10],al
			  mov ah,byte [cs:aballrow]
		  mov byte[cs:ballrow],ah
			  mov ah,byte [cs:aballcol]
		  mov byte[cs:ballcol],ah
			  mov byte[flag],0
			  mov byte [cs:fireflag],0
colcheck:
		  cmp byte dl,0x4e
			  je rightcol
			  jmp upcheck
rightcol:
		  mov byte [cs:rightcolflag],1
			  mov byte [cs:leftcolflag],0
			  mov byte[cs:boardleft],0
			  mov byte[cs:boardright],0
upcheck:
		  cmp dh,1
			  je upcheck1
			  jmp leftcheck
upcheck1:
		  mov byte [cs:flag],0
			  mov byte [cs:fireflag],0
			  ;mov byte[cs:boardleft],0
			  ;mov byte[cs:boardright],1
			  ;mov byte[midflag],0

leftcheck:
		  cmp byte dl,0x02
			  je leftcheck1
			  jmp lin8
leftcheck1:
		  mov byte[cs:boardleft],0
			  mov byte[cs:boardright],0
			  mov byte [cs:leftcolflag],1
			  mov byte [cs:rightcolflag],0


lin8:
		  mov si,0
			  cmp dh,0x09
			  je lin81
			  cmp dh,0x08
			  je lin81
			  jmp lin52
lin81:
		  cmp byte[boxcount],0
			  je bb18
			  cmp byte[boxcount],1
			  je bb17
			  cmp byte[boxcount],2
			  je bb16
			  cmp byte[boxcount],3
			  je bb15
			  cmp byte[boxcount],4
			  je bb14
			  cmp byte[boxcount],5
			  je bb13
bb18:
		  mov bx,box18
			  jmp pp
bb17:
		  mov bx,box17
			  jmp pp
bb16:
		  mov bx,box16
			  jmp pp
bb15:
		  mov bx,box15
			  jmp pp
bb14:
		  mov bx,box14
			  jmp pp
bb13:
		  mov bx,box13

pp:
		  inc byte[boxcount]
ppp:
		  mov cx,dx
			  sub ch,1
			  cmp cx,[bx+si]
		  je pri
			  add si,2
			  cmp si,48
			  jne ppp
			  mov si,0
			  cmp byte[boxcount],5
			  jne lin81
			  jmp lin52
pri:
		  mov ax,7
			  push ax
			  push bx
			  inc byte [cs:gamer]
		  call printer
			  call scoreincrement
			  cmp byte [cs:fireflag],1
			  je j24
			  cmp byte[flag],0
			  je j24
			  cmp byte[flag],1
			  je j25
j24:
		  sub byte[cs:ballrow],3
			  mov byte[flag],1
			  mov si,0
			  jmp l33
j25:
		  inc byte[cs:ballrow]
		  mov byte[flag],0
			  mov si,0
l33:
		  mov word[bx+si],0xFFFF
			  add si,2
			  cmp si,48
			  jne l33

			  pop bx
			  pop ax

			  mov si,0
			  jmp lin52


lin52:
		  mov si,0
			  cmp dh,0x06
			  je lin51
			  cmp dh,0x05
			  je lin51
			  jmp lin32
lin51:
		  cmp byte[boxcount1],0
			  je bb12
			  cmp byte[boxcount1],1
			  je bb11
			  cmp byte[boxcount1],2
			  je bb10
			  cmp byte[boxcount1],3
			  je bb9
			  cmp byte[boxcount1],4
			  je bb8
			  cmp byte[boxcount1],5
			  je bb7
bb12:
		  mov bx,box12
			  jmp pp1
bb11:
		  mov bx,box11
			  jmp pp1
bb10:
		  mov bx,box10
			  jmp pp1
bb9:
		  mov bx,box9
			  jmp pp1
bb8:
		  mov bx,box8
			  jmp pp1
bb7:
		  mov bx,box7

pp1:
		  inc byte[boxcount1]
ppp1:
		  mov cx,dx
			  sub ch,1
			  cmp cx,[bx+si]
		  je pri1
			  add si,2
			  cmp si,48
			  jne ppp1
			  mov si,0
			  cmp byte[cs:boxcount1],5
			  jne lin51
			  jmp lin32
pri1:
		  mov ax,7
			  push ax
			  push bx
			  call printer
			  inc byte [cs:gamer]
		  call scoreincrement

			  cmp byte [cs:fireflag],1  ;;;;;;;;;;;;;;;;;;;;;;;;
		  je j241

			  cmp byte[flag],0
			  je j241
			  cmp byte[flag],1
			  je j251
j241:
		  dec byte[cs:ballrow]
		  mov byte[flag],1
			  mov si,0
			  jmp l331
j251:
		  inc byte[cs:ballrow]
		  mov byte[flag],0
			  mov si,0
			  ;inc byte[cs:ballrow]
		  ;mov byte[cs:flag],0
			  mov si,0
l331:
		  mov word[bx+si],0xFFFF
			  add si,2
			  cmp si,48
			  jne l331

			  pop bx
			  pop ax
			  mov si,0
			  jmp lin32


lin32:
		  	mov si,0
			  cmp dh,0x03
			  je lin31
			  cmp dh,0x02
			  je lin31
			  jmp space
lin31:
		  cmp byte[boxcount2],0
			  je bb6
			  cmp byte[boxcount2],1
			  je bb5
			  cmp byte[boxcount2],2
			  je bb4
			  cmp byte[boxcount2],3
			  je bb3
			  cmp byte[boxcount2],4
			  je bb2
			  cmp byte[boxcount2],5
			  je bb1
bb6:
		  mov bx,box6
			  jmp pp12
bb5:
		  mov bx,box5
			  jmp pp12
bb4:
		  mov bx,box4
			  jmp pp12
bb3:
		  mov bx,box3
			  jmp pp12
bb2:
		  mov bx,box2
			  jmp pp12
bb1:
		  mov bx,box1

pp12:
                  
		  inc byte[boxcount2]
ppp12:
		  mov cx,dx
			  sub ch,1
			  cmp cx,[bx+si]
		  je pri12
			  add si,2
			  cmp si,48
			  jne ppp12
			  mov si,0
			  cmp byte[cs:boxcount2],5
			  jne lin31
			  jmp space
pri12:
		  mov ax,7
			  push ax
			  push bx
			  call printer
			  inc byte [cs:gamer]
		  call scoreincrement
			  cmp byte [cs:fireflag],1
			  je j241111

			  cmp byte[flag],0
			  je j2411
			  cmp byte[flag],1
			  je j2511
j2411:
		  sub byte[cs:ballrow],2
j241111:
		  mov byte[flag],1
			  mov si,0
			  jmp l3311
j2511:
		  inc byte[cs:ballrow]
		  mov byte[flag],0
			  mov si,0
l3311:
		  mov word[bx+si],0xFFFF
			  add si,2
			  cmp si,48
			  jne l3311

			  pop bx
			  pop ax
			  mov si,0



space:
		  cmp byte[cs:boxcount],0x06
			  je boollife
			  jmp comparelife
boollife:
		  mov byte[pflag1],1
comparelife:
		  cmp byte[pflag1],1
			  je lifechange
			  jmp backlife

lifechange:
		  mov ax,0
			  mov ax,0xb800
			  mov es,ax
			  mov ax,0x0720
			  mov di,[power1]
		  mov word[es:di],ax
			  add word[power1],160
			  inc byte[cs:row11+1]
		  mov di,[power1]
		  mov ah,0x04
		  mov al,'L';
			  mov word[es:di],ax
			  cmp word [row11],0x1704
			  je barcompare
			  jmp backlife
barcompare:
		  mov si,0
			  mov bx ,Boardposition

barcompare1:
		  mov ax,0
			  mov ax,[bx+si]
		  cmp ax,[row11]
		  je newlife
			  add si ,2
			  cmp si,48
			  jne barcompare1
			  jmp newlife1


newlife:
		  mov ax,0x40
			  push ax
			  push bx
			  call printer1
			  pop bx
			  pop ax
			  mov di,[power1]
		  sub di,160
			  mov byte[es:3688],' '
			  inc byte[life]
		  dec byte[cs:gamecounter]
		  inc byte[row11+1]
newlife1:
		  mov byte[es:3688],' '
			  mov byte[pflag1],0
			  inc byte[row11+1]


		  ;;;;;;;
backlife:
		  cmp byte[cs:boxcount],0x03
			  je boollife1
			  jmp comparelife1
boollife1:
		  mov byte[pflag2],1
comparelife1:
		  cmp byte[pflag2],1
			  je lifechange1
			  jmp backlife1
			  ;;
lifechange1:
		  mov ax,0
			  mov ax,0xb800
			  mov es,ax
			  mov ax,0x0720
			  mov di,[power2]
		  mov word[es:di],ax
			  add word[power2],160
			  inc byte[cs:row22+1]
		  mov di,[power2]
		  mov ax,0x0731
			  mov word[es:di],ax
			  cmp word [row22],0x172D
			  je barcompare2
			  jmp backlife1
barcompare2:
		  mov si,0
			  mov bx ,Boardposition

barcompare3:
		  mov ax,0
			  mov ax,[bx+si]
		  mov byte [es:di],' '
			  cmp ax,[row22]
		  je newlife2
			  add si ,2
			  cmp si,48
			  jne barcompare3
			  jmp newlife3


newlife2:
		  mov byte[fireflag],1
			  mov ax,0x40
			  push ax
			  push bx
			  call printer1
			  pop bx
			  pop ax
			  mov di,[power2]
		  sub di,160
			  mov byte[es:3688],' '
			  inc byte[row22+1]
newlife3:
		  mov byte[es:3688],' '
			  mov byte[pflag2],0
			  inc byte[row22+1]





		  ;;;
backlife1:
		  popa
			  pop bp
			  ret 
fireflag: db 0
pflag2: db 0
power2: dw 1210 ;; 8 row,45col
pflag1: db 0
power1: dw 1128
row11: dw 0x0704
row22: dw 0x072D




gre: db 25



printscore:
		  push bp 
			  mov bp, sp 
			  push es 
			  push ax 
			  push bx 
			  push cx 
			  push dx 
			  push di 
			  mov ax, 0xb800 
			  mov es, ax ; point es to video base 
			  mov ax, [score] ; load number in ax 
			  mov bx, 10 ; use base 10 for division 
			  mov cx, 0 ; initialize count of digits 
nextdigit:
		  mov dx, 0 ; zero upper half of dividend 
			  div bx ; divide by 10 
			  add dl, 0x30 ; convert digit into ascii value 
			  push dx ; save ascii value on stack 
			  inc cx ; increment count of values 
			  cmp ax, 0 ; is the quotient zero 
			  jnz nextdigit ; if no divide it again

			  mov ah,0x02
			  mov al,'S'
			  mov word[es:3920],ax
			  mov al,'c'
			  mov word[es:3922],ax
			  mov al,'o'
			  mov word[es:3924],ax
			  mov al,'r'
			  mov word[es:3926],ax
			  mov al,'e'
			  mov word[es:3928],ax
			  mov di, 3932

nextpos: 
		  pop dx ; remove a digit from the stack 
			  mov dh, 0x02 ; use normal attribute 
			  mov [es:di], dx ; print char on screen 
			  add di, 2 ; move to next screen location 
			  loop nextpos ; repeat for all digits on stack

			  pop di 
			  pop dx 
			  pop cx 
			  pop bx 
			  pop ax 
			  pop es 
			  pop bp 
			  ret 2 
bonus1:
		  cmp byte[gamer],18
			  je bonus
			  jmp bonus2
bonus:
		  add word[cs:score],100
			  jmp scoreback

scoreincrement:
		  pusha
			  mov bl,[cs:min]
		  cmp bl,0x02
			  jle bonus1
bonus2:
		  add word[cs:score],10
scoreback:
		  push word[cs:score]
		  call printscore
			  popa
			  ret

Endpage:
		  pusha
			  mov al,3h
			  int 10h               ;this will clear the screen
			  MOV AH, 06h    ; Scroll up function
			  XOR AL, AL     ;
		  XOR CX, CX     ; Upper left corner CH=row, CL=column
			  MOV DX, 184FH  ; lower right corner DH=row, DL=column 
			  MOV BH, 20h   ; background color of startpage
			  INT 10H ;video BIOS

			  xor ax,ax
			  mov ax,0xb800
			  mov es,ax
			  mov di,2150
			  mov byte[es:di],'G'
			  add di,2
			  mov byte[es:di],'a'
			  add di,2
			  mov byte[es:di],'m'
			  add di,2
			  mov byte[es:di],'e'
			  add di,2
			  mov byte[es:di],' '
			  add di,2
			  mov byte[es:di],'O'
			  add di,2
			  mov byte[es:di],'v'
			  add di,2
			  mov byte[es:di],'e'
			  add di,2
			  mov byte[es:di],'r'
			  add di,2

			  popa
			pop ax
			mov ax,4c00h
			int 0x21
			 

delay:
		  dec bx
			  cmp bx,0
			  jne delay
			  ret


start:
		  xor ax,ax
			  mov es,ax
			  mov ax,[es:9*4]
		  mov [oldisr],ax
			  mov ax,[es:9*4+2]
		  mov [oldisr+2],ax
			  cli

			  mov word [es:8*4],kbisr1 ;timer
			  mov [es:8*4+2],cs
			  mov word [es:9*4],kbisr
			  mov [es:9*4+2],cs
			  sti

enter2:
		  mov ah,0
			  int 16h
			  cmp al,27            ;waits for escape key
			  jne enter2

			  mov ax,4c00h
			  int 21h
