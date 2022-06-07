class UserContentsController < ApplicationController

  def random_content
    content = Content.all.sample
  end

  def create
    content = Content.find(params[:content_id])
    user_content = UserContent.new(user_content_params)
    user_content.user = current_user
    user_content.content = @content
    @user_content.save
  end

  private

  def user_content_params
    params.require(:user_content).permit(:user_id, :liked)
  end

end
