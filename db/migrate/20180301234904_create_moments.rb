class CreateMoments < ActiveRecord::Migration[5.1]
  def change
    create_table :moments do |t|
      t.belongs_to :character
      t.boolean :lived, default:false
      t.text :description
      t.boolean :success, default: false
    end
  end
end
