class Goal < ApplicationRecord
    belongs_to :posts, class_name: "post", foreign_key: "post_id"
end
