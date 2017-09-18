class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.string :charge_id
      t.string :customer_id
      t.boolean :paid

      t.timestamps
    end
  end
end
