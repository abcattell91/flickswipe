class ContentsController < ApplicationController
  def index
    @contents = Content.all

    @friendship_id = params[:friendship_id]
    @contact_id = Friendship.find(@friendship_id).contact_id
  end
end
