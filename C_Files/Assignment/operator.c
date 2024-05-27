/*
Differentiate between post, pre decrement operators assuming value of i=10, x=20, p=30
initially, what do you observe?
(Write your observations as comments)
a) k=i++,k=++i
c) q=p--/3, q=--p/3


k=i++
    k=10
    i=i+1  //11

k=++i
    i=i+1   //11  
    k=11

q=p--/3
    q=30/3  //10
    p=p-1   //29
    

q=--p/3
    p=p-1   //29
    q=29/3  //9


*/