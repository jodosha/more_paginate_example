class Person < ActiveRecord::Base
  has_many :tweets

  def to_param
    nickname
  end
end
