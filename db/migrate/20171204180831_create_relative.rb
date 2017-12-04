class CreateRelative < ActiveRecord::Migration[5.0]
  def change
    create_table :relatives do |t|
      t.string :family_link
      t.boolean :mother_side, default: true
      t.string :role
      t.string :invitation_status, default: 'pending'
      t.references :user, foreign_key: true
      t.references :hero, foreign_key: true

      t.timestamps
    end
  end
end
