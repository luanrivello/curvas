#pontos
x1 = c(0,1,2,3)
y1 = c(2,-2,2,0)
plot (x1,y1,"b", main="Pontos")

#interpolacao linear
t = seq(1,4,0.01)
i = seq(1,4,1)

ww = data.frame()

#calcular pesos
for(ii in i){

    w = c()

    for(tt in t){
        
        if(ii-1 <= tt && tt <= ii){
            w = append(w,tt-ii+1)
        }else if(ii < tt && tt < ii+1){
            w = append(w,1+ii-tt)
        }else{
            w = append(w,0)
        }

    }

    #pesos independentes
    ww = rbind(ww,w)
    plot(t,w,type="l", col=ii+1, main=paste("Peso",ii))

}

#Todos os pesos juntos
plot(1, xlim=c(1,4), ylim=c(0,1), xlab="t", ylab="w", main="Pesos")
for(a in i){
    lines(t, ww[a,], type="l", col=a+1)
}

#Interpolacao Linear
x2 = c(x1[1]*ww[1,] + x1[2]*ww[2,] + x1[3]*ww[3,] + x1[4]*ww[4,])
y2 = c(y1[1]*ww[1,] + y1[2]*ww[2,] + y1[3]*ww[3,] + y1[4]*ww[4,])

plot(x2, y2, "l", xlab="x", ylab="y", main="Interpolação Linear")