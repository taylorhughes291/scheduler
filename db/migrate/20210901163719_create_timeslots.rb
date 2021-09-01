class CreateTimeslots < ActiveRecord::Migration[6.1]
  def change
    create_table :timeslots do |t|
      t.string :coach
      t.string :time
      t.boolean :available
      t.string :day_of_week

      t.timestamps
    end
  end
end
