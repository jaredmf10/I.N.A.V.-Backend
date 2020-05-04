class CreatePostcards < ActiveRecord::Migration[6.0]
  def change
    create_table :postcards do |t|
      t.string :user_text
      t.string :image
      t.integer :destination_id
      t.integer :user_id
      t.string :font

      t.timestamps
    end
  end
end
