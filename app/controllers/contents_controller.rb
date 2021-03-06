class ContentsController < ApplicationController
  def index
    @contents = Content.all

    @friendship_id = params[:friendship_id]
    @contact_id = Friendship.find(@friendship_id).contact_id
  end

  def show
    @content = Content.find(params[:id])
  end
end
