## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
##Hello everyone. Have a nice day
## Greetings from Severodonetsk, Ukraine
makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() { x }
  setinvers <- function( solve ) { m <<- solve }
  getinvers <- function() { m }
  list( set = set, get = get, setinvers = setinvers, getinvers = getinvers)
}

## Write a short comment describing this function
## Hello Git
cacheSolve <- function(x, ...) {
  m <- x$getinvers()
  
  if (!is.null(m)) {
    message("retrieve the inverse from the cache")
    return (m)
  } 
  
  matX <- x$get()
  ## Calculate the inverse of a matrix
  m <- solve(matX, ...)
  x$setinvers(m)
  
  m
          ## Return a matrix that is the inverse of 'x'
}
