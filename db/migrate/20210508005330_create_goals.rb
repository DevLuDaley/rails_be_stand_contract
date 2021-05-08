class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.datetime :date
      t.string :title

      t.timestamps
    end
  end
end
