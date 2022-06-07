class MatchesController < ApplicationController

  # Show method - one match
  def show
    @match = Match.find(params[:id])
    # in view page then do @match.content.poster
  end

  # do we need to also create and save the match?
  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match)
  end

  private

  def match_params
    params.require(:match).permit(:friendship_id, :content_id)
  end
end
