class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :whiskey, foreign_key: true
      t.integer :user_score

      t.timestamps
    end
  end
end
