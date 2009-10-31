class TweetsController < ApplicationController
  def index
    @tweets = Tweet.paginate_by_creation_date params.dup

    respond_to do |format|
      format.html
      format.js { render :partial => "tweet_list" }
    end
  end
end
