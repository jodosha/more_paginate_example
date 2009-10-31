module TweetsHelper
  def avatar(person)
    image_tag "avatar_#{person.avatar}.png", :alt => h(person.nickname), :size => "72x72"
  end
end
