##I am the only one completely lost? Don't even understand what this would do, 
##nor do I know how to test if it works (cause how do you know if something works
##if you don't even know what it's trying to do??)

makeCacheMatrix <- function(x = matrix()) {
  ##like, what does j mean and why does having a completely null item help?
  j <- NULL
  set <- function(y){
    ##why definte x if it's just y?
    x <<- y
    ##oh good glad j is still null.
    j <<- NULL
  }
  ##why is x outside the function box? what does that do?
  get <- function()x
  ##j is up to somethin now. don't know what, but it's somethin.
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  ##ahh such wisdom. identical things are identical
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

##Still lost, heavily relying on blogs that explain this.

##i feel like they mentioned the ... but why do we need them?
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of x ooookay
  j <- x$getInverse()
  if(!is.null(j)){
    ##why do we want a message? is that printing to a screen that i could theoretically 
    ##read or for some reason are we speaking english to the computer
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
  ##okay a few parts of this second part made sense I guess. still don't know the point.
}
