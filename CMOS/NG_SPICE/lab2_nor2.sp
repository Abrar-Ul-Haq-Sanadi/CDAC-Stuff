//NOR2 ng spice code


.model n1 nmos level = 49 version =3.3.0
.model p1 pmos level = 49 version =3.3.0
.model n2 nmos level = 49 version =3.3.0
.model p2 pmos level = 49 version =3.3.0


vpower Vdd 0 5v
vgnd Vss 0 0 

cap out 0 0.0001p					//capacitor

MP1 x A_in vdd vdd p1
MP2 out B_in x vdd p2
MN1 out A_in vss vss n1
MN2 out B_in vss vss n2

Vin_a A_in 0 Pulse (0 5 10n 0.01n 0.01n 30n 60n)
Vin_b B_in 0 Pulse (5 0 10n 0.01n 0.01n 20n 40n)

.tran 1n 100n
.control
run
Plot A_in
Plot B_in
plot out
.endc
.end