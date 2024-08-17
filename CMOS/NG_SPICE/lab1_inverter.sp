//inverter ng spice code


.model n1 nmos level = 49 version =3.3.0
.model p1 pmos level = 49 version =3.3.0

vpower Vdd 0 5v
vgnd Vss 0 0 

cap out 0 0.0001p

MP out in vdd vdd p1
MN out in vss vss n1
Vin in 0 Pulse (0 5 10n 0.01n 0.01n 30n 60n)

.tran 1n 50n
.control
run
Plot in
plot out
.endc
.end