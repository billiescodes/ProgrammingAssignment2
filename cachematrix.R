## Put comments here that give an overall description of what your
## functions do

## Following function creates a special "matrix" object to cache 
    ##the inverse of a matrix 

makeCacheMatrix <- function(x = matrix()) {
  #initialize vector
  m <- NULL
  #set the value of the vector
  set <- function(y) {
    x <<- y
    m <<-NULL
  }
  #get the value of the vetor
  get <- function ()x  #gets value of vector
  setMatrix <- function(solve) m <<- solve
  getMatrix <- function() m # gets the value of the matrix
  list( set=set, get=get,
        setMatrix = setMatrix,
        getMatrix = getMatrix)
}


## Function to solve the inverse of a matrix from the special "matrix" object
    ## of the previous function. If the inverse has already been calculated 
    ## (and the matrix has not changed), then the cachesolve
        ##should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix,...)  #solves for the matrix
  x$setMatrix(m)
  m
}

