class ContentsController < ApplicationController
  def index
    @contents = Content.all

    @friendship_id = params[:friendship_id]
  end
end
