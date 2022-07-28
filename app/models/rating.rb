class Rating < ActiveRecord::Base
    belongs_to :user
    belongs_to :dish

    #puts to terminal formated as: Rating for {insert dish name} by {insert user name}: 
    #{insert rating score}. Because, {insert rating reason}
    def print_rating
        puts "Rating for #{self.dish.name} by #{self.user.name}: #{self.score}. Because, #{self.reason}."
    end
end