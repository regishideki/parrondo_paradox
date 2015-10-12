table = read.table('/home/regis/workspace/regis/parrondo_paradox/result.txt')

A <- table$V1
B <- table$V2
AB <- table$V3

plot(A, type='l', ylim=c(-2000,700),col="red",lty=1,ylab="Money",lwd=2,xlab="Plays",xaxt="n")
lines(B, col='orange')
lines(AB, col='blue')
axis(1, seq(0, 100000, by=25000))
axis(2, seq(-2000, 500, by=500))
grid()
#legend(0, -1000, c('A'), lty=c(1), col=c('red'))
#legend(0, -1000, c('A', 'B'), lty=c(1, 1), col=c('red', 'orange'))
legend(0, -1000, c('A', 'B', 'A+B'), lty=c(1, 1, 1), col=c('red', 'orange', 'blue'))

