class CreateShippingPayers < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_payers do |t|

      t.timestamps
    end
  end
end
