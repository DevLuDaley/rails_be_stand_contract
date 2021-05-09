class Contract < ApplicationRecord
    # has_many :posts
    has_and_belongs_to_many :posts
    has_many :goals, :through => :posts, :uniq => true
end
