class FriendshipsController < ApplicationController

  def index
    # showing specific friendships
    @friendships = Friendship.where(initiator: current_user)

    @friendships = Friendship.where(initiator: current_user)
    @friendships_data = @friendships.map do |friendship|
      { user_photo_key: User.find(friendship.contact_id).photo.key,
        friendship_id: friendship.id,
        current_user_friend: User.find(friendship.contact_id),
        user_first_name: User.find(friendship.contact_id).first_name }
    end
  end

  def show
    @friendship = Friendship.find(params[:id])

    @friendships = Friendship.where(initiator: current_user, contact: @friendship.contact_id)
    @friendship_data = @friendships.map do |friendship|
      { user_photo_key: User.find(friendship.contact_id).photo.key,
        friendship_id: friendship.id,
        current_user_friend: User.find(friendship.contact_id),
        user_first_name: User.find(friendship.contact_id).first_name }
    end

    current_user_liked_true = UserContent.where(user_id: current_user, liked: true)
    friendship_liked_true = UserContent.where(user_id: @friendship.contact_id, liked: true)

    current_user_liked = current_user_liked_true.map(&:content_id).uniq

    friendship_liked = friendship_liked_true.map(&:content_id).uniq

    match_id = current_user_liked & friendship_liked

    @matched = Content.where(id: match_id)

    # @matched.filter_by_content(params[:content_type])
    # @matched.filter_by_rating(params[:rating])
    # @matched.filter_by_duration(params[:duration])

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
