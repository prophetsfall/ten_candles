class CreateSupplies < ActiveRecord::Migration[5.1]
  def change
    create_table :supplies do |t|
      t.string :item_name, null:false
      t.integer :uses, null:false, default: 1
      t.belongs_to :character
    end
  end
end
