class Deleteaddcovertousers < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuarios, :pictureProfile
    add_attachment :usuarios, :pictureProfile
  end
end
