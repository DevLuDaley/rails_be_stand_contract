class PostSerializer < ActiveModel::Serializer
  attributes :id, :date, :contracts#, :goals
  # has_and_belongs_to_many :contract#, class_name: "Contract", foreign_key: "Contracts_id"
  # has_and_belongs_to_many :goal#, join_table: "goals_posts", foreign_key: "goals_id"
end
