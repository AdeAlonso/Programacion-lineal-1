a=-9.81
yini=c(v=2,p=3)#vector de condiciones iniciales
p=3 #posición inicial
movimiento=function(t,y,parms){
  with(as.list(y),{
    dv=a
    dp=a*t
    list(c(dv,dp))})}
tiempo=seq(0,5,0.001)
solucion=ode(y=yini,times=tiempo,func=movimiento,parms=NULL)

plot(solucion)
plot(tiempo,solucion[,'v'],type='l')
lines(tiempo,solucion[,'p'])