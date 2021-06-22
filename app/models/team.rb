class Team < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews 
    serialize :reviews

    # def slugify
    #     self.slug = name.parameterize
    # end

    def calculate_average
        return 0 unless reviews.size.positive?
    
        avg = reviews.average(:score).to_f.round(2)
        update_column(:average_score, avg)
    end
end
