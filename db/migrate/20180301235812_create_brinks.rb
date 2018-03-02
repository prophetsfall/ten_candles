class CreateBrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :brinks do |t|
      t.belongs_to :character
      t.string :brink_name
      t.boolean :active, default:true

    end
  end
end
