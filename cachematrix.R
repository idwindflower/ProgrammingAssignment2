## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  ##set function stores the matrix in cashe, get function recalls the matrix from cache
  set <- function(y){
    x<<- y
    inverse <- NULL
    
  }
  get <- function () x 
  ##setinverse function stores the inversed matrix in cache, getinverse function recalls the inversed matrix from cache
  setinverse <- function (solve)inverse <<- solve
  getinverse <- function ()inverse
  
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inverse <- x$getinverse()
#check if there exist a matrix already, return it directly from cache
if(!is.null(inverse)){
  message("getting cache data")
  return(inverse)
  
}
##calculate the inverse of matrix , got from cache
data <- x$get()
inverse < - solve (data,...)
x$setinverse(inverse)
  inverse
  
  
  }
