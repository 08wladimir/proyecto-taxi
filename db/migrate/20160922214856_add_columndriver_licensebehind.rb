class AddColumndriverLicensebehind < ActiveRecord::Migration[5.0]
  def change
    add_attachment :drivers, :licenseBehind
  end
end
