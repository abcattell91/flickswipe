class FriendshipsController < ApplicationController

  def index
    # showing specific friendships
    @friendships = Friendship.where(initiator: current_user)
  end

  def create
    if Friendship.exists?(friendship_params)
        redirect_to users_path
    else
      Friendship.create(friendship_params)
        redirect_to users_path
    end
  end

  private

  def friendship_params
    params.permit(:initiator_id, :contact_id)
  end
end
