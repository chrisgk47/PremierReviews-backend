class Team < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews #needs fixing
    serialize :reviews

    # def slugify
    #     self.slug = name.parameterize
    # end


end
