class Availabilities < ActiveRecord::Migration[6.1]
  def change
    add_column :availabilities, :name, :string
  end
end
