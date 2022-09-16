class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.references :ship, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :ata
      t.string :title
      t.string :maintenance_message
      t.integer :priority
      t.string :description
      t.boolean :completed
      t.timestamps
    end
  end
end
