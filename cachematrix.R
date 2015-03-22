makeCacheMatrix <- function(x = matrix()) {

  ## Initialize the inverse property
  <- NULL
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
    }
## Method the get the matrix
  get <- function() {
  ## Return the matrix
  m
    }

## set the inverse of the matrix
  setInverse <- function(inverse) {
  i <<- inverse
}

## get the inverse of the matrix
getInverse <-function() {
    
i
}


##list of methods 
list(set = set, get = get,
     setInverse = setInverse, 
     getInverse = getInverse)

## give back the unique matrix by "makeCacheMatrix"
  m <- x$getInverse()
  if( !is.null(m)) { 
        message("getting cached data")
        return(m)
  }      

##compute the inverse 
  m <-solve(data) %*% data
##set the inverse to the object
  x$setInverse(m)

  m
}
