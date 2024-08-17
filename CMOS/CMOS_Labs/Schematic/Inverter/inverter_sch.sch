DSCH3
VERSION 10-07-2024 19:57:08
BB(-40,-15,124,65)
SYM  #pmos
BB(20,-5,40,15)
TITLE 35 0  #pmos_1
MODEL 902
PROP   2u 0.12u MP                                                                                                                               
REC(21,0,19,15,r)
VIS 2
PIN(40,-5,0.000,0.000)s
PIN(20,5,0.000,0.000)g
PIN(40,15,0.030,0.140)d
LIG(20,5,26,5)
LIG(28,5,28,5)
LIG(30,11,30,-1)
LIG(32,11,32,-1)
LIG(40,-1,32,-1)
LIG(40,-5,40,-1)
LIG(40,11,32,11)
LIG(40,15,40,11)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(20,35,40,55)
TITLE 35 40  #nmos_2
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(21,40,19,15,r)
VIS 2
PIN(40,55,0.000,0.000)s
PIN(20,45,0.000,0.000)g
PIN(40,35,0.030,0.140)d
LIG(30,45,20,45)
LIG(30,51,30,39)
LIG(32,51,32,39)
LIG(40,39,32,39)
LIG(40,35,40,39)
LIG(40,51,32,51)
LIG(40,55,40,51)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(35,-15,45,-5)
TITLE 38 -9  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(40,-5,0.000,0.000)vdd
LIG(40,-5,40,-10)
LIG(40,-10,35,-10)
LIG(35,-10,40,-15)
LIG(40,-15,45,-10)
LIG(45,-10,40,-10)
FSYM
SYM  #vss
BB(35,57,45,65)
TITLE 39 62  #vss
MODEL 0
PROP                                                                                                                                    
REC(35,55,0,0,b)
VIS 0
PIN(40,55,0.000,0.000)vss
LIG(40,55,40,60)
LIG(35,60,45,60)
LIG(35,63,37,60)
LIG(37,63,39,60)
LIG(39,63,41,60)
LIG(41,63,43,60)
FSYM
SYM  #clock
BB(-40,17,-25,23)
TITLE -35 20  #clock1
MODEL 69
PROP   50.000 50.000                                                                                                                                
REC(-38,18,6,4,r)
VIS 1
PIN(-25,20,1.500,0.140)clk1
LIG(-30,20,-25,20)
LIG(-35,18,-37,18)
LIG(-31,18,-33,18)
LIG(-30,17,-30,23)
LIG(-40,23,-40,17)
LIG(-35,22,-35,18)
LIG(-33,18,-33,22)
LIG(-33,22,-35,22)
LIG(-37,22,-39,22)
LIG(-37,18,-37,22)
LIG(-30,23,-40,23)
LIG(-30,17,-40,17)
FSYM
SYM  #light
BB(118,10,124,24)
TITLE 120 24  #light5
MODEL 49
PROP                                                                                                                                    
REC(119,11,4,4,r)
VIS 1
PIN(120,25,0.000,0.000)out5
LIG(123,16,123,11)
LIG(123,11,122,10)
LIG(119,11,119,16)
LIG(122,21,122,18)
LIG(121,21,124,21)
LIG(121,23,123,21)
LIG(122,23,124,21)
LIG(118,18,124,18)
LIG(120,18,120,25)
LIG(118,16,118,18)
LIG(124,16,118,16)
LIG(124,18,124,16)
LIG(120,10,119,11)
LIG(122,10,120,10)
FSYM
CNC(40 25)
CNC(40 25)
CNC(5 20)
LIG(40,15,40,25)
LIG(-25,20,5,20)
LIG(5,20,5,45)
LIG(5,5,20,5)
LIG(40,25,40,35)
LIG(40,25,120,25)
LIG(5,45,20,45)
LIG(5,5,5,20)
FFIG C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\inverter_sch.sch
