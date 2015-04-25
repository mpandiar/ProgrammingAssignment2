
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

<<<<<<< Updated upstream

makeCacheMatrix <- function(mtrx = matrix()) {
=======
makeCacheMatrix <- function(x = matrix()) {
>>>>>>> Stashed changes
    inverse <- NULL
    set <- function(x) {
        mtrx <<- x;
        inverse <<- NULL;
    }
<<<<<<< Updated upstream
       get <- function() return(mtrx);
          setinv <- function(inv) inverse <<- inv;
        getinv <- function() return(inverse);
       return(list(set = set, get = get, setinv = setinv, getinv = getinv))
    }
=======
    get <- function() return(mtrx);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}
>>>>>>> Stashed changes

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache


<<<<<<< Updated upstream
     cacheSolve <- function(mtrx, ...) {
          inverse <- mtrx$getinv()
             if(!is.null(inverse)) {
              message("Getting cached data from cached matrix...")
          return(inverse)
         }
         data <- mtrx$get()
          invserse <- solve(data, ...)
          mtrx$setinv(inverse)
         return(inverse)
    }
=======
cacheSolve <- function(x, ...) {
    
    
        ## Return a matrix that is the inverse of 'x'
        cacheSolve <- function(mtx, ...) {
            inverse <- mtrx$getinv()
            if(!is.null(inverse)) {
                message("Getting cached data from cached matrix...")
                return(inverse)
            }
            data <- mtrx$get()
            invserse <- solve(data, ...)
            mtrx$setinv(inverse)
            return(inverse)
}
>>>>>>> Stashed changes
