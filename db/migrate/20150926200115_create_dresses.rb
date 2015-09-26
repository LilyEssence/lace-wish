class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.string :color
      t.string :brand
      t.string :type

      t.timestamps null: false
    end
  end
end
