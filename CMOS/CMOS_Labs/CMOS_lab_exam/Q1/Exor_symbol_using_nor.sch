DSCH3
VERSION 31-07-2024 11:38:56
BB(-4,-15,189,50)
SYM  #nor2
BB(20,5,55,25)
TITLE 40 15  #nor2_1
MODEL 302
PROP                                                                                                                                    
REC(10,5,0,0, )
VIS 0
PIN(20,10,0.000,0.000)a
PIN(20,20,0.000,0.000)b
PIN(55,15,0.090,0.140)s
LIG(20,20,33,20)
LIG(32,22,28,25)
LIG(47,17,44,21)
LIG(48,15,47,17)
LIG(47,13,48,15)
LIG(44,9,47,13)
LIG(39,6,44,9)
LIG(44,21,39,24)
LIG(39,24,28,25)
LIG(28,5,39,6)
LIG(34,18,32,22)
LIG(28,5,32,8)
LIG(32,8,34,12)
LIG(34,12,35,15)
LIG(35,15,34,18)
LIG(20,10,33,10)
LIG(52,15,55,15)
LIG(50,15,50,15)
VLG   nor nor2(s,a,b);
FSYM
SYM  #nor2
BB(90,-15,125,5)
TITLE 110 -5  #nor2_2
MODEL 302
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(90,-10,0.000,0.000)a
PIN(90,0,0.000,0.000)b
PIN(125,-5,0.090,0.070)s
LIG(90,0,103,0)
LIG(102,2,98,5)
LIG(117,-3,114,1)
LIG(118,-5,117,-3)
LIG(117,-7,118,-5)
LIG(114,-11,117,-7)
LIG(109,-14,114,-11)
LIG(114,1,109,4)
LIG(109,4,98,5)
LIG(98,-15,109,-14)
LIG(104,-2,102,2)
LIG(98,-15,102,-12)
LIG(102,-12,104,-8)
LIG(104,-8,105,-5)
LIG(105,-5,104,-2)
LIG(90,-10,103,-10)
LIG(122,-5,125,-5)
LIG(120,-5,120,-5)
VLG   nor nor2(s,a,b);
FSYM
SYM  #nor2
BB(90,30,125,50)
TITLE 110 40  #nor2_3
MODEL 302
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(90,35,0.000,0.000)a
PIN(90,45,0.000,0.000)b
PIN(125,40,0.090,0.070)s
LIG(90,45,103,45)
LIG(102,47,98,50)
LIG(117,42,114,46)
LIG(118,40,117,42)
LIG(117,38,118,40)
LIG(114,34,117,38)
LIG(109,31,114,34)
LIG(114,46,109,49)
LIG(109,49,98,50)
LIG(98,30,109,31)
LIG(104,43,102,47)
LIG(98,30,102,33)
LIG(102,33,104,37)
LIG(104,37,105,40)
LIG(105,40,104,43)
LIG(90,35,103,35)
LIG(122,40,125,40)
LIG(120,40,120,40)
VLG   nor nor2(s,a,b);
FSYM
SYM  #nor2
BB(135,10,170,30)
TITLE 155 20  #nor2_4
MODEL 302
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(135,15,0.000,0.000)a
PIN(135,25,0.000,0.000)b
PIN(170,20,0.090,0.070)s
LIG(135,25,148,25)
LIG(147,27,143,30)
LIG(162,22,159,26)
LIG(163,20,162,22)
LIG(162,18,163,20)
LIG(159,14,162,18)
LIG(154,11,159,14)
LIG(159,26,154,29)
LIG(154,29,143,30)
LIG(143,10,154,11)
LIG(149,23,147,27)
LIG(143,10,147,13)
LIG(147,13,149,17)
LIG(149,17,150,20)
LIG(150,20,149,23)
LIG(135,15,148,15)
LIG(167,20,170,20)
LIG(165,20,165,20)
VLG   nor nor2(s,a,b);
FSYM
SYM  #button
BB(-4,-14,5,-6)
TITLE 0 -10  #A
MODEL 59
PROP                                                                                                                                    
REC(-3,-13,6,6,r)
VIS 1
PIN(5,-10,0.000,0.000)A
LIG(4,-10,5,-10)
LIG(-4,-6,-4,-14)
LIG(4,-6,-4,-6)
LIG(4,-14,4,-6)
LIG(-4,-14,4,-14)
LIG(-3,-7,-3,-13)
LIG(3,-7,-3,-7)
LIG(3,-13,3,-7)
LIG(-3,-13,3,-13)
FSYM
SYM  #button
BB(-4,41,5,49)
TITLE 0 45  #B
MODEL 59
PROP                                                                                                                                    
REC(-3,42,6,6,r)
VIS 1
PIN(5,45,0.000,0.000)B
LIG(4,45,5,45)
LIG(-4,49,-4,41)
LIG(4,49,-4,49)
LIG(4,41,4,49)
LIG(-4,41,4,41)
LIG(-3,48,-3,42)
LIG(3,48,-3,48)
LIG(3,42,3,48)
LIG(-3,42,3,42)
FSYM
SYM  #light
BB(183,5,189,19)
TITLE 185 19  #out
MODEL 49
PROP                                                                                                                                    
REC(184,6,4,4,r)
VIS 1
PIN(185,20,0.000,0.000)out1
LIG(188,11,188,6)
LIG(188,6,187,5)
LIG(184,6,184,11)
LIG(187,16,187,13)
LIG(186,16,189,16)
LIG(186,18,188,16)
LIG(187,18,189,16)
LIG(183,13,189,13)
LIG(185,13,185,20)
LIG(183,11,183,13)
LIG(189,11,183,11)
LIG(189,13,189,11)
LIG(185,5,184,6)
LIG(187,5,185,5)
FSYM
CNC(75 15)
CNC(20 45)
CNC(20 -10)
CNC(20 -10)
LIG(90,0,75,0)
LIG(75,0,75,15)
LIG(75,35,90,35)
LIG(125,40,130,40)
LIG(130,40,130,25)
LIG(130,25,135,25)
LIG(125,-5,130,-5)
LIG(130,-5,130,15)
LIG(130,15,135,15)
LIG(55,15,75,15)
LIG(75,15,75,35)
LIG(5,45,20,45)
LIG(20,20,20,45)
LIG(20,45,90,45)
LIG(5,-10,20,-10)
LIG(20,-10,20,10)
LIG(20,-10,90,-10)
LIG(170,20,185,20)
FFIG C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\Cmos_lab_exam\Exor_symbol_using_nor.sch
