## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
ca <- NULL
    ##define some funtions
    set <- function(y) {
        x <<- y
        ca <<- NULL
    }
    
    get <- function() x
    
    setInverse <- function(inverse) ca <<-inverse
    
    getInverse <- function() ca
    ##construct a list
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
           ca <- x$getInverse()
    if ( ! is.null(ca)) {
        print("cached successfully")
        return(ca)
    }
    ca <- solve(x$get())
    x$setInverse(ca)
    ca
}
