class AddPicDriver < ActiveRecord::Migration[5.0]
  def change
    add_attachment :drivers, :profilePic
  end
end
