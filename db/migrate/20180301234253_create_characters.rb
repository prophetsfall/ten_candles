class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :first_name, null:false
      t.string :last_name, null:false
      t.belongs_to :game_session
      t.text :look
      t.text :concept
    end
  end
end
