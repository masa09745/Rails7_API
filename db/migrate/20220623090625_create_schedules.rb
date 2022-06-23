class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :from
      t.string :to
      t.date :dep_date
      t.time :dep_time
      t.date :arr_date
      t.time :arr_time

      t.timestamps
    end
  end
end
