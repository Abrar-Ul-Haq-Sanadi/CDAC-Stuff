DSCH 2.6i
VERSION 4/16/2003 7:36:56 AM
BB(-149,-110,-21,-15)
SYM  #and2
BB(-75,-85,-40,-65)
TITLE -63 -74  #&
MODEL 402
PROP                                                                                                                                                                                                            
REC(-150,-110,0,0,)
VIS 0
PIN(-75,-70,0.000,0.000)b
PIN(-75,-80,0.000,0.000)a
PIN(-40,-75,0.090,0.070)s
LIG(-75,-70,-67,-70)
LIG(-67,-85,-67,-65)
LIG(-47,-75,-40,-75)
LIG(-48,-73,-51,-69)
LIG(-47,-75,-48,-73)
LIG(-48,-77,-47,-75)
LIG(-51,-81,-48,-77)
LIG(-56,-84,-51,-81)
LIG(-51,-69,-56,-66)
LIG(-56,-66,-67,-65)
LIG(-67,-85,-56,-84)
LIG(-75,-80,-67,-80)
VLG   and and2(out,a,b);
FSYM
SYM  #light2cc
BB(-27,-90,-21,-76)
TITLE -25 -75  #.
MODEL 49
PROP                                                                                                                                                                                                            
REC(-26,-88,4,5,r)
VIS 5
PIN(-25,-75,0.000,0.000)A>B
LIG(-22,-83,-22,-88)
LIG(-22,-88,-23,-89)
LIG(-26,-88,-26,-83)
LIG(-23,-78,-23,-81)
LIG(-24,-78,-21,-78)
LIG(-24,-76,-22,-78)
LIG(-23,-76,-21,-78)
LIG(-27,-81,-21,-81)
LIG(-25,-81,-25,-75)
LIG(-27,-83,-27,-81)
LIG(-21,-83,-27,-83)
LIG(-21,-81,-21,-83)
LIG(-25,-89,-26,-88)
LIG(-23,-89,-25,-89)
FSYM
SYM  #light1cc
BB(-27,-110,-21,-96)
TITLE -25 -95  #.
MODEL 49
PROP                                                                                                                                                                                                            
REC(-26,-108,4,5,r)
VIS 5
PIN(-25,-95,0.000,0.000)A=B
LIG(-22,-103,-22,-108)
LIG(-22,-108,-23,-109)
LIG(-26,-108,-26,-103)
LIG(-23,-98,-23,-101)
LIG(-24,-98,-21,-98)
LIG(-24,-96,-22,-98)
LIG(-23,-96,-21,-98)
LIG(-27,-101,-21,-101)
LIG(-25,-101,-25,-95)
LIG(-27,-103,-27,-101)
LIG(-21,-103,-27,-103)
LIG(-21,-101,-21,-103)
LIG(-25,-109,-26,-108)
LIG(-23,-109,-25,-109)
FSYM
SYM  #and2
BB(-75,-45,-40,-25)
TITLE -63 -34  #&
MODEL 402
PROP                                                                                                                                                                                                            
REC(-150,-110,0,0,)
VIS 0
PIN(-75,-30,0.000,0.000)b
PIN(-75,-40,0.000,0.000)a
PIN(-40,-35,0.090,0.070)s
LIG(-75,-30,-67,-30)
LIG(-67,-45,-67,-25)
LIG(-47,-35,-40,-35)
LIG(-48,-33,-51,-29)
LIG(-47,-35,-48,-33)
LIG(-48,-37,-47,-35)
LIG(-51,-41,-48,-37)
LIG(-56,-44,-51,-41)
LIG(-51,-29,-56,-26)
LIG(-56,-26,-67,-25)
LIG(-67,-45,-56,-44)
LIG(-75,-40,-67,-40)
VLG   and and2(out,a,b);
FSYM
SYM  #inv
BB(-120,-65,-85,-45)
TITLE -105 -55  #~
MODEL 101
PROP                                                                                                                                                                                                            
REC(-150,-110,0,0,)
VIS 0
PIN(-120,-55,0.000,0.000)in
PIN(-85,-55,0.030,0.070)out
LIG(-120,-55,-110,-55)
LIG(-110,-65,-110,-45)
LIG(-110,-65,-95,-55)
LIG(-110,-45,-95,-55)
LIG(-93,-55,-93,-55)
LIG(-91,-55,-85,-55)
VLG   not not1(out,in);
FSYM
SYM  #inv
BB(-120,-35,-85,-15)
TITLE -105 -25  #~
MODEL 101
PROP                                                                                                                                                                                                            
REC(-150,-110,0,0,)
VIS 0
PIN(-120,-25,0.000,0.000)in
PIN(-85,-25,0.030,0.070)out
LIG(-120,-25,-110,-25)
LIG(-110,-35,-110,-15)
LIG(-110,-35,-95,-25)
LIG(-110,-15,-95,-25)
LIG(-93,-25,-93,-25)
LIG(-91,-25,-85,-25)
VLG   not not1(out,in);
FSYM
SYM  #light3cc
BB(-27,-50,-21,-36)
TITLE -25 -35  #.
MODEL 49
PROP                                                                                                                                                                                                            
REC(-26,-48,4,5,r)
VIS 5
PIN(-25,-35,0.000,0.000)A<B
LIG(-22,-43,-22,-48)
LIG(-22,-48,-23,-49)
LIG(-26,-48,-26,-43)
LIG(-23,-38,-23,-41)
LIG(-24,-38,-21,-38)
LIG(-24,-36,-22,-38)
LIG(-23,-36,-21,-38)
LIG(-27,-41,-21,-41)
LIG(-25,-41,-25,-35)
LIG(-27,-43,-27,-41)
LIG(-21,-43,-27,-43)
LIG(-21,-41,-21,-43)
LIG(-25,-49,-26,-48)
LIG(-23,-49,-25,-49)
FSYM
SYM  #xnor2
BB(-120,-105,-85,-85)
TITLE -103 -95  #^
MODEL 612
PROP                                                                                                                                                                                                            
REC(-150,-110,0,0,)
VIS 0
PIN(-120,-100,0.000,0.000)a
PIN(-120,-90,0.000,0.000)b
PIN(-85,-95,0.090,0.070)out
LIG(-112,-88,-116,-85)
LIG(-108,-88,-112,-85)
LIG(-93,-93,-96,-89)
LIG(-92,-95,-93,-93)
LIG(-93,-97,-92,-95)
LIG(-96,-101,-93,-97)
LIG(-101,-104,-96,-101)
LIG(-96,-89,-101,-86)
LIG(-101,-86,-112,-85)
LIG(-112,-105,-101,-104)
LIG(-106,-92,-108,-88)
LIG(-112,-105,-108,-102)
LIG(-108,-102,-106,-98)
LIG(-106,-98,-105,-95)
LIG(-105,-95,-106,-92)
LIG(-116,-105,-112,-102)
LIG(-112,-102,-110,-98)
LIG(-110,-98,-109,-95)
LIG(-109,-95,-110,-92)
LIG(-110,-92,-112,-88)
LIG(-120,-100,-111,-100)
LIG(-120,-90,-111,-90)
LIG(-88,-95,-85,-95)
LIG(-90,-95,-90,-95)
VLG   xnor xnor2(out,a,b);
FSYM
SYM  #button2cc
BB(-149,-94,-140,-86)
TITLE -145 -90  #Button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-148,-93,6,6,r)
VIS 1
PIN(-140,-90,0.000,0.000)B
LIG(-141,-90,-140,-90)
LIG(-149,-94,-149,-86)
LIG(-141,-94,-149,-94)
LIG(-141,-86,-141,-94)
LIG(-149,-86,-141,-86)
LIG(-148,-93,-148,-87)
LIG(-142,-93,-148,-93)
LIG(-142,-87,-142,-93)
LIG(-148,-87,-142,-87)
FSYM
SYM  #button1cc
BB(-149,-104,-140,-96)
TITLE -145 -100  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-148,-103,6,6,r)
VIS 1
PIN(-140,-100,0.000,0.000)A
LIG(-141,-100,-140,-100)
LIG(-149,-104,-149,-96)
LIG(-141,-104,-149,-104)
LIG(-141,-96,-141,-104)
LIG(-149,-96,-141,-96)
LIG(-148,-103,-148,-97)
LIG(-142,-103,-148,-103)
LIG(-142,-97,-142,-103)
LIG(-148,-97,-142,-97)
FSYM
CNC(-135 -90)
CNC(-130 -80)
CNC(-130 -100)
CNC(-130 -100)
CNC(-130 -100)
LIG(-135,-90,-120,-90)
LIG(-130,-100,-130,-80)
LIG(-130,-100,-120,-100)
LIG(-40,-75,-25,-75)
LIG(-85,-25,-75,-25)
LIG(-85,-70,-75,-70)
LIG(-85,-70,-85,-55)
LIG(-75,-30,-75,-25)
LIG(-120,-40,-75,-40)
LIG(-120,-55,-120,-40)
LIG(-135,-55,-120,-55)
LIG(-135,-90,-135,-55)
LIG(-140,-90,-135,-90)
LIG(-130,-80,-130,-25)
LIG(-130,-25,-120,-25)
LIG(-40,-35,-25,-35)
LIG(-85,-95,-25,-95)
LIG(-130,-80,-75,-80)
LIG(-140,-100,-130,-100)
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\Comp.SCH
