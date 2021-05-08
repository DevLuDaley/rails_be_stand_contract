class GoalSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_and_belongs_to_many :post, join_table: "table_name", foreign_key: "posts_id"
end
