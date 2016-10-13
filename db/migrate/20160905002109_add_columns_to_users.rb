class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :expirateMM, :string
    add_column :usuarios, :expirateYY, :string
    add_column :usuarios, :cvCode, :string
    add_column :usuarios, :cuponCode, :string
  end
end
