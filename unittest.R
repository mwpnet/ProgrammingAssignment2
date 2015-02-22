## from https://class.coursera.org/rprog-011/forum/thread?thread_id=405

# Test your code
source("cachematrix.R")
#
# generate matrix, and the inverse of the matrix.
size <- 1000 # size of the matrix edge, don't make this too big
mymatrix <- matrix(rnorm(size^2), nrow=size, ncol=size)
mymatrix.inverse <- solve(mymatrix)
#
# now solve the matrix via the cache-method
#
special.matrix   <- makeCacheMatrix(mymatrix)
#
# this should take long, since it's the first go
t1<-system.time(special.solved.1 <- cacheSolve(special.matrix))
print("first step took:")
print(t1)
#
# this should be lightning fast
t2<-system.time(special.solved.2 <- cacheSolve(special.matrix))
print("second step took:")
print(t2)

#
# check if all solved matrices are identical
if( identical(mymatrix.inverse, special.solved.1) & identical(mymatrix.inverse, special.solved.2) ){
  print("both matrices match")
} else {
  print("matrices DON'T MATCH")
}
#
# should return TRUE


