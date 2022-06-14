class UserContentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def random_content
    content = Content.all.sample
  end

  def create
    # content = Content.find(params[:content_id])
    liked = params[:liked] == 'approve'

    content = UserContent.new(user_id: current_user.id, liked: liked, content_id: params[:content_id] )
    content.save
    # if
    #   liked == true
    # user_content.user = current_user
    # user_content.content = @content
    # @user_content.save
    # friendship = Friendship.find(params[:friendship_id])
    # friend = friendship.contact == current_user ? friendship.initiator : friendship.contact
    # other_friends_user_content = UserContent.where(user: friend, content: content).first
    # if other_friends_user_content
    #   @match = Match.create(friendship: friendship, content: content)
    # end
  end

  def contact_rated_content_as_json
    # access user_contents table and retrieve content_id and user_id
    rated_content = UserContent.where(user_id: params[:contact_id])
    render json: rated_content.to_json
  end
  # private

  # def user_content_params
  #   # liked = params[:action] == 'approve'
  #   params.permit(:user_id, :liked, :content_id)
  # end
end
