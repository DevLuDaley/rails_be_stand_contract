class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
