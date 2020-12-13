class Show < ActiveRecord::Base

    def highest_rating
        self.maximum("rating")
    end

    def most_popular_show
        self.where("rating = ?", self.highest_rating.first)
    end

    def lowest_rating
        self.minimum("rating")
    end

    def least_popular_show
        self.where("rating = ?", self.lowest_rating.first)
    end
    
    def ratings_sum
        self.sum("rating")
    end

    def popular_shows
        self.where("rating > 3")
    end

    def shows_by_alpbetical_order
        self.order(name: :asc)
    end

end