class Goal < ApplicationRecord
    belongs_to :posts#, class_name: "post", foreign_key: "posts_id"
end
