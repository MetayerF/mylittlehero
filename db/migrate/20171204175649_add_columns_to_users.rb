class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :nickname, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :place_of_birth, :string
    add_column :users, :gender, :string
    add_column :users, :my_car, :string
    add_column :users, :favorite_song, :string
    add_column :users, :favorite_movie, :string
    add_column :users, :job, :string
    add_column :users, :photo, :string
  end
end
