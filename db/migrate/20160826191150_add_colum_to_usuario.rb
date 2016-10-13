class AddColumToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :firstName, :string
    add_column :usuarios, :lastName, :string
    add_column :usuarios, :rol, :string
    add_column :usuarios, :identityCard, :string
    add_column :usuarios, :cellphone, :string
    add_column :usuarios, :language, :string
    add_column :usuarios, :paymentOption, :string
    add_column :usuarios, :birthdayDate, :string
    add_column :usuarios, :pictureProfile, :string
  end
end
