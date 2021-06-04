class Goal < ApplicationRecord
    # belongs_to :posts#, class_name: "post", foreign_key: "posts_id"
    has_and_belongs_to_many :posts
    # has_and_belongs_to_many :posts#, class_name: "post", foreign_key: "posts_id"
end
