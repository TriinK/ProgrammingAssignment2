## Put comments here that give an overall description of what your
## functions do

# Function to return a set of lists that can be used later to inverse a matrix...
# and determine whether it already has a value.
# @param: matrix
# @return: list containing four functions with the same given name

makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(matrix) mat <<- matrix
  getmatrix <- function() mat
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}

# This function takes the argument from previous function and checks its value
# @param: x as a matrix created in a previous function
# @return: the inverse of special matrix x named mat

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getmatrix()
  if (!is.null(mat)) { ## checks whether the value is present or not
      message("Setting inverse matrix")
      return (mat)
  data <- x$get()
  mat <- solve(data) ## inverse the matrix using function solve()
  x$setmatrix(mat)
  return (mat)
  }
}
