class AddUniqueIndexToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_index :profiles, :user_id, unique: true, name: 'unique_user_profile'
  end
end
