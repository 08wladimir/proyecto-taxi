class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.date :datestart
      t.date :datefinish
      t.string :quantity
      t.string :state

      t.timestamps
    end
  end
end
