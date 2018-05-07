## Function to compute Matrix Inverse thru caching

## caching matrix, calling "solve" function 

makeCacheMatrix <- function(x = matrix()) {
  InvMatrix <- NULL
  set <-function(y){
    x <<- y
    InvMatrix <<- NULL
  }
  get<-function() x
  setinverse <- function() InvMatrix <<- solve(x)
  getinverse <- function() InvMatrix
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## solving matrix inverse given agruments of previous function "makeCacheMatrix". 
##Assumes supplied matrix is square and invertible 

cacheSolve <- function(x, ...) {
  InvMatrix <-x$getinverse()
  if(!is.null(InvMatirx)) {
    message("Getting Cached Data")
    return(InvMatrix)
  }
  data<-x$get()
  InvMatrix<-solve(data,...)
  x$setinverse(InvMatrix)
}
