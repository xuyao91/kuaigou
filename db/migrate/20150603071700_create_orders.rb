class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :city, default: 1, null: false
      t.integer :car_type, null: false
      t.string :address_start, null: false
      t.string :address_end, null: false
      t.string :name, null: false
      t.string :tel, null: false
      t.string :total_price, null: false
      t.text :memo
      t.integer :status, null: false, default: 0 #0:新订单 1:跟进中订单 3:已完成订单
      t.string :update_author
      t.timestamps
    end
  end
end
