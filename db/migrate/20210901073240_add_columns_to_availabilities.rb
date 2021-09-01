class AddColumnsToAvailabilities < ActiveRecord::Migration[6.1]
  def change
    add_column :availabilities, :name, :string
    add_column :availabilities, :timezone, :string
    add_column :availabilities, :day_of_week, :string
    add_column :availabilities, :available_at, :string
    add_column :availabilities, :available_until, :string
  end
end
