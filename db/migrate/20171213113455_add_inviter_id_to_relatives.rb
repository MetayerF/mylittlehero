class AddInviterIdToRelatives < ActiveRecord::Migration[5.0]
  def change
    add_column :relatives, :inviter_id, :integer
  end
end
