class FriendshipsController < ApplicationController

  def index
    # showing specific friendships
    @friendships = Friendship.includes(:user)
  end

  def create
    # devise determining current user
    @user = current_user
    # finding the second user
    @second_user = User.find(params[:id])
    # creating a new friendship
    @friendship = Friendship.new
    # assigning the intiator id to user
    @friendship.initiator = @user
    # assigning the contact id to user
    @friendship.contact = @second_user
    # if successful redirect to friendship index
    if @friendship.save
      redirect_to friendships_path
    end
  end

  private

  def friendship_params
    params.require(:friendship).permit(:initiator_id, :contact_id)
  end
end
