## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set<- function(y){
  x<<-y
  m<<-NULL
}
get <- function() x
setinverse <- function(inverse) m <<-mean
getinverse <- function() m
list(set = set, get = get, setinverse = setinverse
     , getinverse = getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if(!is.null(m)){
      message("getting cached data")
    return(m)
  }
  data <- x$get()
  m<-inverse(data,...)
  x$setinverse(m)
  m
  
}

test_matrix <- matrix( c(5, 1, 0,3,-1, 2,4, 0,-1), nrow=3, byrow=TRUE)
test_matrix
solve(test_matrix)

