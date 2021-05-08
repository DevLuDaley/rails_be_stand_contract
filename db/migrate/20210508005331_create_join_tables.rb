class CreateJoinTables < ActiveRecord::Migration[6.0]
  def change
    create_join_table :contracts, :posts 
    create_join_table :posts, :goals 
  end
end
