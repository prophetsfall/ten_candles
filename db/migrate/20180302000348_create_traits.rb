class CreateTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :traits do |t|
      t.string :trait_name, null: false
      t.string :type, null: false
      t.boolean :active, default: true
    end
  end
end
