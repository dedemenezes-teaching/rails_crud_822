class ChangeAddressOnRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :address, :string
  end
end
