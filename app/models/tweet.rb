class Tweet < ActiveRecord::Base
  belongs_to :person

  def self.paginate_by_creation_date(params)
    paginate :all,
      :sort_key   => params[:sort_key] || "created_at",
      :sort_value => params[:sort_value],
      :sort_id    => params[:sort_id],
      :include    => :person
  end
end
