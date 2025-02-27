## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL  #intializing inverses as NULL
  set<-function(y){
           x<<-y
          inv<<-NULL
  }
  get<-function()x   #function to get matrix x
  setInverse<-function(inverse) {inv<<-inverse} 
  getInverse<-function(){inv}
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
  }




## Write a short comment describing this function

cacheSolve <- function(x, ...) ##geta cache data
  {
  inv<-x$getInverse()
  if(!is.null(inv)){              #checking whether inverse is NULL
                 message("getting chaches data!")
                 return(inv)      #returns inverse value
  }
  mat<-x$get()
  inv<-solve(mat,...)         #calculates inverse value
  x$setInverse(inv)
  inv      ## Return a matrix that is the inverse of 'x'
}
