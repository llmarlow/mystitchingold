class UsersController < ApplicationController
  def show
    @user = User.find_by_username(params[:id])
    if @user
      @projects = @user.projects.all
      render action: :show
    else
      render file: 'public/404', project:404, formats:[:html]
    end
  end
end
