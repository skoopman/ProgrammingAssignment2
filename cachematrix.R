## Functions calculate and cache the inverse of a matrix

## Create a list that contains a matrix and its inverse
makeCacheMatrix <- function(x = numeric()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Find and return the inverse of the matrix in the list from makeCacheMatrix
## If the inverse has already been found, retrieve it from the cache. 
## If the inverse has not been found, calculate it.
cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}
