class FriendshipsController < ApplicationController

  def index
    # showing specific friendships
    @friendships = Friendship.where(initiator: current_user)
  end

  def create
    Friendship.create(friendship_params)
  end

  private

  def friendship_params
    params.permit(:initiator_id, :contact_id)
  end
end
