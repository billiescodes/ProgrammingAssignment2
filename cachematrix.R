## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
w