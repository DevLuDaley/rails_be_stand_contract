class GoalSerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :done, :posts
  #has_and_belongs_to_many :posts, join_table: "table_name", foreign_key: "posts_id"
end
