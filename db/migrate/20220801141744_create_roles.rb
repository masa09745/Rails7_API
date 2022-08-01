class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.references :section, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
