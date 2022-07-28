class Dish < ActiveRecord::Base
    has_many :ratings
    has_many :users, through: :ratings

    def leave_rating(user, score, reason, recommended_price)
        Rating.create(
            score: score,
            reason: reason,
            recommended_price: recommended_price,
            user_id: user.id,
            dish_id: self.id
        )
    end

    def print_all_ratings
        #iteration
        # self.ratings.each do |each_rating|
        #    puts "Rating for #{self.name} by #{each_rating.user.name}: #{each_rating.score}. Because, #{each_rating.reason}."
        # end

        self.ratings.each do |rating_instance|
            rating_instance.print_rating
        end
    end

    def average_rating
        #iteration
        average_rating_for_dish = 0.00
        total_scores_value = 0.00
        
        self.ratings.each do |each_rating|
            total_scores_value = total_scores_value + each_rating.score
        end
        
        average_rating_for_dish = total_scores_value/self.ratings.count

        return average_rating_for_dish
    end

    def is_dish_popular
        if (self.average_rating > 5)
            true 
        else 
            false
        end
    end

end