
## This file is used to calculate the inverse of the matrix 
## efficiently for a large data.
## It uses the concept of caching the inverse of the matrix 
## already calculated and displayes whenever needed.


## Function is used to cache inverse of matrix is until now 
## it wasn't calculated, or if was calculated earlier then it
## extracted from the cache memory.

makeCacheMatrix <- function(x = matrix()) {
    
    
}


## Function is used to calculate the Inverse of given Matrix
## Function is called only when there is a need for calculating
## the invere of the matrix.

cacheSolve <- function(x, ...) {
  
    ## Returns a matrix that is the inverse of 'x'
    return (solve(x))
}
