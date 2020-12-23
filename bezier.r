#pontos
x1 = c(0,1,2,3)
y1 = c(2,-2,2,0)
plot (x1,y1,"b", main="Pontos")

#bezier
t = seq(0,1,0.01)

x2 = ((1-t)^3 * x1[1] + 3*t*(1-t)^2 * x1[2] + 3*t^2 * (1-t)*x1[3] + t^3*x1[4])
y2 = ((1-t)^3 * y1[1] + 3*t*(1-t)^2 * y1[2] + 3*t^2 * (1-t)*y1[3] + t^3*y1[4])

plot(x2, y2,type="l",xlim=c(0,3), ylim=c(-2,2), main="Bezier")

plot (x1,y1,type="b",xlim=c(0,3), ylim=c(-2,2),col="blue", main="Pontos+Bezier")
lines (x2,y2, type="l", col="red")

#pesos
p1 = (1-t)^3
p2 = 3*t*(1-t)^2 
p3 = 3*t^2*(1-t)
p4 = t^3

plot(t, p1, "l", c(0,1), c(0,1), col="cyan", main="Pesos")
lines(t, p2, "l", col="orange")
lines(t, p3, "l", col="green")
lines(t, p4, "l", col="red")