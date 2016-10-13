class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :email, :string
    add_column :drivers, :onePhone, :integer
    add_column :drivers, :twoPhone, :integer
    add_column :drivers, :cardNumber, :integer
    add_column :drivers, :date, :date
    add_column :drivers, :code, :integer
  end
end
