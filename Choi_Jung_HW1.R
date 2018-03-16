# list all numbers from 1 to 999
# n = seq(from=1, to=10)

x1 = 0 #  X0 = 0
x2 = 1 #  X-1 = -1
rt = NULL
x=NULL
y=NULL
for(i in 1:999){                  # set to param 1:999
  x = c(x, x1 + x2)              # Xn = Xn-1 + Xn-2
  y = c(y, (x1+x2)+x1)           # Xn+1 = Xn + Xn-1 
  
  x2 = x1              # Update
  x1 = x[i]
  
  # print(sprintf("rt_%d: %f", i, x))
  
  # print(x/y)
  # rt = c(rt, x/y)
  # rt = append(rt, y/x, after = length(rt))
  # print(sprintf("x_%d+1=    %d, x_%d=    %d",i, i, y, x))
        
  # print(sprintf("rt_%d: %f", i,rt[i]))
  # rt = seq(x/y)
  # rt = sprintf("rt_%d: %f", i,x/y)
  # print(rt)
  
}
plot(y/x, type="p", main = "Xn+1/Xn ratio", xlab="n", ylab="Xn+1/Xn" )
# plot.window(xlim, ylim, log = "", asp = NA, ...)
