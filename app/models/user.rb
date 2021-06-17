class User < ApplicationRecord
    has_many :color_stories

    validates :user_name, uniqueness: true 
end
