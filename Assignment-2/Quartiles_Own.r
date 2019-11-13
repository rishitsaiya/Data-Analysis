n=length(p)

sort_p=sort(p)

#round(6.2)

q1=0.25*(n+1)
q2=median(sort_p)
q3=0.75*(n+1)

if(((n+1)%%4)==0){
  qr1=sort_p[q1]
  qr1
}

if(((n+1)%%4)!=0){
  u=round(q1)
  v=u+1
  qr1=(sort_p[u]+sort_p[v])/2
  qr1
}

q3_check=3*(n+1)

if(((q3_check)%%4)==0){
  qr3=sort_p[q3]
  qr3
}

if(((q3_check)%%4)!=0){
  u=round(q3)
  v=u+1
  qr3=((sort_p[u])+(sort_p[v]))/2
  qr3
}