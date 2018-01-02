class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, :length => 50, :null => false
      t.integer :parent_id, :default => 0
      t.string :title, :lenght => 50, :null=> false
      t.string :slug, :length => 50, :null => false
      t.string :meta_keyword, :length => 250
      t.string :meta_description, :length => 250
      t.boolean :publish, default: false
      t.integer :user_id, :default => 0
      t.timestamps

      t.index :slug, :unique => true
    end
  end
end
