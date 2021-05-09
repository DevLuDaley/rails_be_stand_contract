class Contract < ApplicationRecord
    has_many :posts
    # has_many :locations, :through => :posts, :uniq => true
end
