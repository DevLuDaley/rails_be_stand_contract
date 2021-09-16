class AddFieldsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :part_number, :string
  end
end
