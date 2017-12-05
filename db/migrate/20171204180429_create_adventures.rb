class CreateAdventures < ActiveRecord::Migration[5.0]
  def change
    create_table :adventures do |t|
      t.string :title
      t.text :description
      t.string :location
      t.date :date
      t.references :user, foreign_key: true
      t.references :hero, foreign_key: true

      t.timestamps
    end
  end
end
