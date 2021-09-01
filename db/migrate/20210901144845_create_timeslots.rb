class CreateTimeslots < ActiveRecord::Migration[6.1]
  def change
    create_table :timeslots do |t|
      t.string :coach
      t.string :day_of_week
      t.string :time
      t.boolean :available

      t.timestamps
    end
  end
end
