class CreateModules < ActiveRecord::Migration[5.1]
  def change
    create_table :modules do |t|
      t.string :title, null: false
      t.text :description, null:false
    end
    add_index :modules, :title
  end
end
