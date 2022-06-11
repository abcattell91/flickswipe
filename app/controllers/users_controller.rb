class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @users = User.where.not(id: current_user.id)

    @friendships = Friendship.where(initiator: current_user)
  end

  def index
    @users = User.where.not(id: current_user.id)
    @friendships = Friendship.where(initiator: current_user)
  end
end
