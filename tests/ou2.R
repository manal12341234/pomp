options(digits=3)
png(filename="ou2-%02d.png",res=100)

library(pomp)

ou2() -> ou2

set.seed(1438408329L)

plot(ou2)
rinit(ou2)
coef(ou2)

stopifnot(all.equal(coef(ou2),partrans(ou2,coef(ou2,transform=TRUE),dir="from")))
plot(s <- simulate(ou2,seed=1438408329L))
pf <- freeze(pfilter(ou2,Np=1000),seed=1438408329L)
plot(pf)
tj <- trajectory(ou2,format="a")
matplot(time(ou2),t(tj[,1,]),type="l",ylab="")

d <- dprocess(s,x=states(s),params=coef(s),times=time(s),log=TRUE)
plot(d[,],ylab="log prob")

try(dprocess(s,x=states(s)[,c(1:9,15)],params=coef(s),times=time(s)[c(1:9,15)]))

e <- emeasure(s,x=states(s),params=coef(s),times=time(s))
matplot(time(s),t(obs(s)),xlab="",ylab="",col=1:2)
matlines(time(s),t(apply(e,c(1,3),mean)),col=1:2)

v <- vmeasure(s,x=states(s),params=coef(s),times=time(s))
stopifnot(
  dim(v)==c(2,2,1,100),
  v[1,1,,]==v[2,2,,],
  v[1,2,,]==v[2,1,,],
  rownames(v)==c("y1","y2"),
  colnames(v)==rownames(v)
)

dev.off()
