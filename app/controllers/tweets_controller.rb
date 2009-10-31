class TweetsController < ApplicationController
  def index
    @tweets = Tweet.paginate :all, params.dup
  end
end
