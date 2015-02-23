## cretes a special "matrix" that also caches it's own inverse
makeCacheMatrix <- function(x = matrix()) {
  
  mat <- x
  invMat <- NULL
  
  set <- function(y){
    mat <<- y
    invMat <<- NULL
  }
  
  get <- function(){
    mat
  }

  ## only kept for compleatness
  ## probably never used
  setinv <- function(inv){
    invMat <<- inv
  }
  
  ## if the inverse of this matrix is alredy computed,
  ## then return the caches value. Otherwise get the inverse
  ## store it and return it.
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


## return the onverse of the special matrix x
## Just a wrapper for the getinv above
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  x$getinv(...)
}
