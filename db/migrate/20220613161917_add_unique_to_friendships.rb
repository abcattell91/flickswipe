class AddUniqueToFriendships < ActiveRecord::Migration[6.1]
  def change
    add_index :friendships, [:initiator_id, :contact_id], unique: true
  end
end
