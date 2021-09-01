class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.string :name
      t.string :timezone
      t.string :day_of_week
      t.string :available_at
      t.string :available_until

      t.timestamps
    end
  end
end
