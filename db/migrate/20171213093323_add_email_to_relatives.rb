class AddEmailToRelatives < ActiveRecord::Migration[5.0]
  def change
    add_column :relatives, :email, :string, default: "", null: false
  end
end
