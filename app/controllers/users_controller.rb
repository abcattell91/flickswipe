class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.where.not(id: current_user.id)
    @friendships = Friendship.where(initiator: current_user)
    @friendships_data = @friendships.map do |friendship|
      { user_photo_key: User.find(friendship.contact_id).photo.key,
        friendship_id: friendship.id,
        current_user_friend: User.find(friendship.contact_id),
        user_first_name: User.find(friendship.contact_id).first_name }
    end

    if params[:query].present?
      @friendships_data = @friendships_data.map do |search_result|
        if params[:query].downcase == search_result[:user_first_name].downcase
          {
            user_photo_key: User.find(search_result[:current_user_friend].id).photo.key,
            friendship_id: search_result[:friendship_id],
            current_user_friend: User.find(search_result[:current_user_friend].id),
            user_first_name: User.find(search_result[:current_user_friend].id).first_name
          }
        end
      end.compact
    end
  end

  def index
    @user = User.find(current_user.id)
    @users = User.where.not(id: current_user.id)
    @friendships = Friendship.where(initiator: current_user)

    # @users = User.where(first_name: params[:query])
    @likes = UserContent.where(user_id: current_user, liked: true)
  end
end
