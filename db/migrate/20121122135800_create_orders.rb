class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
	  t.string :order_id, :null => false
	  t.datetime :order_time
	  t.string :order_channel, :default => "Novasol"
	  t.integer :order_status, :default => 0

	  t.integer :gift_flag
	  t.string :gift_price
	  t.string :gift_msg

	  t.string :del_msg

	  t.string :mem_id, :null => false
	  t.string :mem_name, :null => false
	  t.string :mem_email, :null => false
	  t.integer :mem_post
	  t.string :mem_prov
	  t.string :mem_city
	  t.string :mem_dist
	  t.string :mem_addr
	  t.string :mem_mobile
	  t.string :mem_phone

	  t.string :del_name
	  t.integer :del_post
	  t.string :del_prov
	  t.string :del_city
	  t.string :del_dist
	  t.string :del_addr
	  t.string :del_mobile
	  t.string :del_phone

	  t.integer :inv_flag
	  t.string :inv_title
	  t.string :inv_content
	  t.string :inv_name
	  t.integer :inv_post
	  t.string :inv_prov
	  t.string :inv_city
	  t.string :inv_dist
	  t.string :inv_addr
	  t.string :inv_mobile
	  t.string :inv_phone

	  t.text :detail, :null => false
	  t.integer :payment, :null => false
	  t.decimal :ship, :precision => 5, :scale => 2
	  t.decimal :coupon, :precision => 6, :scale => 2, :default => 0.00
	  t.integer :pay_status, :default => 0
	  t.date :pay_date
	  t.integer :ship_status, :default => 0
	  t.string :ship_sched
	  t.date :ship_date
	  t.string :del_company
	  t.string :del_ship_id
	  t.date :arrival

      t.timestamps
    end

	add_index :orders, :order_id
	add_index :orders, :mem_id
  end
end
