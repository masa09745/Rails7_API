class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.references :ship, null: false, foreign_key: true
      t.date :date
      t.string :ATA
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
