## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is a function that creates a list containing a function to
## 1.set the value of the vector 2.get the value of the vector 3.set the value of the inverse 4.get the value of the inverse
makeCacheMatrix <- function(x = matrix()) { 
invs <- NULL
set <- function(y) { 
x <<- y 
invs <<- NULL
}        
 get <- function() x
 setinvs <- function(inverse) invs <<- inverse
 getinvs <- function() invs
         list(set = set, get = get, setinvs = setinvs, getinvs = getinvs)
         }
         
 ## Gets inverse from cache if available, else computes the same
 cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
 invs <- x$getinvs()
         if(!is.null(invs)) {
                 message("getting cached data")
                 return(invs)
         }
         data <- x$get()
         invs <- solve(data, ...)
         x$setinvs(invs)
         invs
 }


