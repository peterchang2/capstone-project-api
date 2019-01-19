class CreateWhiskeys < ActiveRecord::Migration[5.2]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.float :meta_critic
      t.string :cost
      t.string :class
      t.string :country
      t.string :whiskey_type

      t.timestamps
    end
  end
end
