class PeopleController < ApplicationController
  def show
    @person = Person.find_by_nickname!(params[:id])
    @tweets = @person.tweets.paginate(:all, :sort_key => "created_at", :sort_value => params[:sort_value], :sort_id => params[:sort_id], :sort_order => "desc", :include => :person)

    respond_to do |format|
      format.html
      format.js { render :partial => "shared/tweet_list" }
    end
  end
end
