class AddFieldsToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :message, :string
    add_column :priority, :message, :string
  end
end
