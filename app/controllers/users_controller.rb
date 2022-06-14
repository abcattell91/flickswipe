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
  end

  def index
    @user = User.find(current_user.id)
    @users = User.where.not(id: current_user.id)
    @friendships = Friendship.where(initiator: current_user)
  end
end
