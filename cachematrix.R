## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##library(MASS) is used to calculate inverse for non squared as well as square matrices
makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL  #intializing inverses as NULL
  set<-function(y){
           x<<-y
          inv<<-NULL
  }
  get<-function()x     #function to get matrix x
  setinv<-function(inverse)inv<<-inverse 
  getinv<-function(){
    inner<-ginv(x)
    inver%*%      #functions to obtain inverse of the matrix
      
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
  }




## Write a short comment describing this function

cacheSolve <- function(x, ...) ##geta cache data
  {
  inv<-x$getinv()
  if(!is.null(inv)){              #checking whether inverse is NULL
                 message("getting chaches data!")
                 return(inv)      #returns inverse value
  }
  data<-x$get()
  inv<-solve(data,...)         #calculates inverse value
  x$setinv(inv)
  inv      ## Return a matrix that is the inverse of 'x'
}
