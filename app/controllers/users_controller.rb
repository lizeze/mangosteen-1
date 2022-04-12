class UsersController < ApplicationController

 def show
       p '22'
  end

 def create
     user =User.new email:'lz2@qq.com', age:2  
   if  user.save
     render json: user 
  else
   render json:user.errors
  end
  end
end
