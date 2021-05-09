class Contract < ApplicationRecord
    has_many :post
  has_many :locations, :through => :post, :uniq => true
end
