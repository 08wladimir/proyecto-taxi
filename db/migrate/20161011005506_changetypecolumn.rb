class Changetypecolumn < ActiveRecord::Migration[5.0]
  def change
    change_column :drivers, :identityCard, :string
    change_column :drivers, :onePhone, :string
    change_column :drivers, :twoPhone, :string
    change_column :drivers, :cardNumber, :string
  end
end
