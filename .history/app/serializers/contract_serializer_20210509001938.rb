class ContractSerializer < ActiveModel::Serializer
  attributes :id, :date, :posts#, :goals
  # has_many :posts
  # has_and_belongs_to_many :post#, join_table: "contracts_posts", foreign_key: "post_id"
  
  #+ has_and_belongs_to_many :posts, join_table: "contracts_posts", foreign_key: "post_id"
  
  #+ has_many :goals, through: :join_association, source: :join_association_table_foreign_key_to_goals_table
end
