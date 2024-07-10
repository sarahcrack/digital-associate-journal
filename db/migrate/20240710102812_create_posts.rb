class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.integer :week
      t.string :digital_area
      t.datetime :date
      t.text :body

      t.timestamps
    end
  end
end
