## Put comments here that give an overall description of what your
## functions do

## this function if the inverse of the matrix was cached or not 

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <- function(y) {
    x <<- y
    m<<- NULL
  }
  get <- function() x
  setInverse <<- function(Inverse) m <<- Inverse
  getInverse <<- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## calcultes the invers if it wan't cached before

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  else{
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
  }
  
}    


