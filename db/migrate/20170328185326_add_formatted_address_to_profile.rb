class AddFormattedAddressToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :formatted_address, :string
  end
end
