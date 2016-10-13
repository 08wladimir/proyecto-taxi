class Modifytiattachtodrivers < ActiveRecord::Migration[5.0]
  def change
    remove_column :drivers, :license
    remove_column :drivers, :rut
    remove_column :drivers, :peaceCertificate
    
    add_attachment :drivers, :license
    add_attachment :drivers, :rut
    add_attachment :drivers, :peaceCertificate
  end
end
