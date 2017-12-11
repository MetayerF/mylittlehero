class AddNewDetailsToHeros < ActiveRecord::Migration[5.0]
  def change
    add_column :heros, :number_of_tooth, :string
  end
end
