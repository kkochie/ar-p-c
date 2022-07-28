class User < ActiveRecord::Base
    has_many :ratings
    has_many :dishes, through: :ratings

    def favorite_dish
       highest_score = self.ratings.maximum( :score )

        self.ratings.each do | each_rating |
            if (each_rating.score === highest_score)
                each_rating.dish
            end
        end
        return "No Ratings or no ratings with high score"
    end

    def least_favorite_dish
        lowest_score = self.ratings.minimum( :score )

        self.ratings.each do | each_rating |
            if (each_rating.score === lowest_score)
            each_rating.dish
            end
        end
        return "No Ratings or no ratings with low score"
    end

    def remove_ratings(dish_in)
        self.ratings.each do | rating.instance |
            
            if ( rating_instance.dish.id === dish_in.id )
                rating_instance.destroy
            end
        end

    end

end