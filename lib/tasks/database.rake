namespace :db do
  desc "Erase and fill the database with fake data."
  task :populate => :environment do
    begin
      require 'populator'
      require 'faker'
    rescue LoadError
      puts "You need 'populator' and 'faker' gems.\n\tTry with: (sudo) gem install populator faker"
    end

    [Person, Tweet].each(&:delete_all)
    now = Time.now

    Person.populate 10 do |person|
      person.nickname = Faker::Name.first_name.downcase
      person.avatar   = 0..6
    end

    Tweet.populate 1000 do |tweet|
      tweet.text = Populator.sentences(1..3)
      tweet.created_at = 2.weeks.ago(now)..now
    end

    people = Person.all :select => [:id]
    Tweet.all.each do |tweet|
      tweet.person = people.rand
      tweet.save
    end
  end
end
