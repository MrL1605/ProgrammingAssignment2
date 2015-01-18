
## This file is used to calculate the inverse of the matrix 
## efficiently for a large data.
## It uses the concept of caching the inverse of the matrix 
## already calculated and displayes whenever needed.


## Function is used to calculate the Inverse of given Matrix
## Function creates a list object and this object is taken as
## argument by the cacheSolve function to check if already 
## inverse was calculated.

makeCacheMatrix <- function(x = matrix()) {
  
    i <- NULL
    
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    
    get <- function() x
    setinverse <- function(mean) i <<- solve
    getinverse <- function() i
    ##List containg all the funcions with their names
    list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
  }
  

## Function takes object returned by makeCacheMatrix as argument
## and checks if the inverse is already calculated, if yes then 
## returns the same inverse or else calculates the inverse of 
## the function.

cacheSolve <- function(x, ...) {
  
  i <- x$getinverse()
  if(!is.null(i)) {
      ## If inverse exits
      message ("getting cached data")
      return (i)
    }
  
  ## If inverse doesn't exists calculate and 
  data <- x$get()
  m <- solve(data, ...)
  ## and set the value
  x$setinverse(i)
  
  ## Returns a matrix that is the inverse of 'x'  
  return(i)

}
