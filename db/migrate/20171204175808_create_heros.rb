class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :firstname
      t.string :lastname
      t.string :nickname
      t.string :gender
      t.string :photo
      t.integer :weight, default: 0
      t.integer :size, default: 0
      t.string :astro_sign
      t.string :eyes_color
      t.string :hair_color
      t.string :favorite_toy
      t.string :place_of_birth
      t.date :date_of_birth
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
