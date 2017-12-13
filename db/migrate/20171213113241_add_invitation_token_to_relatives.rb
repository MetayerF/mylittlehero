class AddInvitationTokenToRelatives < ActiveRecord::Migration[5.0]
  def change
    add_column :relatives, :invitation_token, :string
  end
end
