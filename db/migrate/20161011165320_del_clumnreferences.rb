class DelClumnreferences < ActiveRecord::Migration[5.0]
  def change
    remove_column :vehicle_per_usuarios, :vehicule_id
    remove_column :vehicle_per_usuarios, :usuario_id
    add_reference :vehicle_per_usuarios, :vehicule, index: true
    add_reference :vehicle_per_usuarios, :usuario, index: true
  end
end
