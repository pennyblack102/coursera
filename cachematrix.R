

## makeCacheMatrix function creates a list containing a function to set and get the matrix and the inverse of the matrix 
makeCacheMatrix <- function(m = matrix()) {
  i <- NULL
    
  ## Set the matrix 
  set <- function( matrix) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Get the matrix 
  get <- function() {
    m
  }
  
  #Set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Get the inverse of the matrix
  getInverse <- function(){ 
    i
  }
  
  ## List of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}



## The cacheSolve function calculates the inverse of the matrix. It first checks whether the inverse matrix has been calculated already

cacheSolve <- function(x, ...) {
      
  # Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  
  # Return the inverse if its already set
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
 
  # Get the matrix
  data <- x$get()
  
  
  #Calculate the inverse of the matrix
  m <- solve(data) 
  
  
  # Set the inverse 
  x$setInverse(m)
  
  # Return the matrix
   m
  
  
}





