class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :email
      t.boolean :livemode
      t.string :default_source

      t.timestamps
    end
  end
end
