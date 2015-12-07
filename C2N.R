# Categorical to numerical features
# Input is a factor column
C2N <- function (x){
    y <- as.data.frame(x)
    y <- rep(y,nlevels(x))
    y <- as.data.frame(y)
    for (n in 1:ncol(y)){
        levels(y[,n]) <- diag(nlevels(x))[,n]
    }
    return(y)
}