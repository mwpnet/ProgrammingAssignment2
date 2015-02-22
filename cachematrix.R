## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  mat <- x
  invMat <- NULL
  
  set <- function(y){
    x <<- y
    invMat <<- NULL
  }
  
  get <- function(){
    x
  }
  
  setinv <- function(inv){
    invMat <<- inv
  }
  
  getinv <- function(...){
    if(!is.null(invMat)) {
      return(invMat)
    }
    data <- mat
    invMat <<- solve(data, ...)
    invMat
  }
  
  list( get=get, set=set, getinv=getinv, setinv=setinv )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  x$getinv()
}
