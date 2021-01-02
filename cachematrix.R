## Put comments here that give an overall description of what your
## functions do

## Function to cache the matrix into the global environment 

makeCacheMatrix <- function(x = matrix()) {

matCache <- NULL
set <-function(y= matrix()){ 
   x <<- y
   matCache <<- NULL
   
}
get <- function() x 
setSolve <- function(solve) matCache <<- solve
getSolve <- function() matCache


list(set = set, get = get, 
     setSolve= setSolve,
     getSolve = getSolve)

}


## Checks to see if Matrix inverse is in cache if not
## solves the matrix and then puts in cache

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getSolve()
 if(!is.null(m)){
   
   message("Getting Cache Data")
   return(m)
 }
   
   data <- x$get()
   m <- solve(data)
   x$setSolve(m)
   m
   
}




