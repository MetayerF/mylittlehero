class RenameMyCarToCarInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :my_car, :car
  end
end
