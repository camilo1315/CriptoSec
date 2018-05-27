class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

	
    #def home
    #    @posts = Post.index #-> whatever you want here
    #end
end
