class UsersController < ApplicationController
def new
  @user = User.new
  if logged_in?
    redirect_to feeds_path
end
end

def create
   @user = User.new(user_params)
   if @user.save
     redirect_to user_path(@user.id)
   else
     render :new
   end
 end

 def show
    @user = User.find(params[:id])
  end

  def update
    if @feed.update(blog_params)
      redirect_to feed_path, notice: "feed was successfully updated！"
    else
      render :edit
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
