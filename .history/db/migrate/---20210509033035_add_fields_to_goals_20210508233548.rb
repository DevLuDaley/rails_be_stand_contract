class AddFieldsToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :done, boolean
    # add_column :priority, :message, :string
  end
end
