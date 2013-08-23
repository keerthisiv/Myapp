class MyWallController < ApplicationController
  def show
  	@user = current_user
  	if @user
  		@myposts = @user.wallposts.all.reverse
  		render action: :show
  	else
  		redirect_to login_path
  	end
  end
end
