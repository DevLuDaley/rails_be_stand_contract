class Goal < ApplicationRecord
    belongs_to_many :posts#, class_name: "post", foreign_key: "posts_id"
end
