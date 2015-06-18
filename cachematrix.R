
## Put comments here that give an over all discription of what your functions do
## This function enables the users to get the computed data from the cache and not calculate it all over again 




## makeCacheMatrix is a function to store the inverse of a matrix
## create two variables, x and m to be availabe in global environments
##  function solve is used to create the inverse of the matrix




makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

##  Cachesolve is a function to to get the inverse function from the cache
## Return a matrix that is the inverse of 'x'from cache
## assign the inverser matix to the varible m
## return computed values from cache


cacheSolve <- function(x, ...) {
  
       m <- x$getinverse()
      if(!is.null(m)) {
        message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  }
  
