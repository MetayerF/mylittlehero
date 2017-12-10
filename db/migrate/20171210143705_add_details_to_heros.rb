class AddDetailsToHeros < ActiveRecord::Migration[5.0]
  def change
    add_column :heros, :favorite_food, :string
    add_column :heros, :hour_of_birth, :string
    add_column :heros, :first_word, :string
    add_column :heros, :first_teeth, :date
    add_column :heros, :first_steps, :date
    add_column :heros, :first_friend, :string
  end
end
