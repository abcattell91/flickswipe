class ContentsController < ApplicationController
    @contents = Content.all
  end
end
