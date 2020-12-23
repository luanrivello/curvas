#pontos
x1 = c(0,1,2,3)
y1 = c(2,-2,2,0)
plot (x1,y1,"b", main="Pontos")

#lagrange
t = seq(1,4,0.01)

#f = (y1[1]*(t-x1[2])*(t-x1[3])*(t-x1[4]))/((x1[1]-x1[2])*(x1[1]-x1[3])*(x1[1]-x1[4])) + (y1[2]*(t-x1[1])*(t-x1[3])*(t-x1[4]))/((x1[2]-x1[1])*(x1[2]-x1[3])*(x1[2]-x1[4])) + (y1[3]*(t-x1[1])*(t-x1[2])*(t-x1[4]))/((x1[3]-x1[2])*(x1[3]-x1[1])*(x1[3]-x1[4])) + (y1[4]*(t-x1[1])*(t-x1[2])*(t-x1[3]))/((x1[4]-x1[2])*(x1[4]-x1[3])*(x1[4]-x1[1]))

w1 = ((t-2)*(t-3)*(t-4))/((1-2)*(1-3)*(1-4))
w2 = ((t-1)*(t-3)*(t-4))/((2-1)*(2-3)*(2-4))
w3 = ((t-1)*(t-2)*(t-4))/((3-1)*(3-2)*(3-4))
w4 = ((t-1)*(t-2)*(t-3))/((4-1)*(4-2)*(4-3))

xx = x1[1]*w1 + x1[2]*w2 + x1[3]*w3 + x1[4]*w4
yy = y1[1]*w1 + y1[2]*w2 + y1[3]*w3 + y1[4]*w4

plot(xx, yy, "l",main="Lagrange")

plot(x1,y1, "b", c(0,3), c(-3,3),col="blue",main="Lagrange+Pontos")
lines(xx, yy, "l", col="red")

#pesos
plot(t,w1, type="l", xlim=c(1,4), ylim=c(-0.5,1.2), col="orange", main="Pesos")
lines(t,w2, "l", col="red")
lines(t,w3, "l", col="cyan")
lines(t,w4, "l", col="green")
