class AddSelllistToUser < ActiveRecord::Migration
  def change
    
    add_column :users, :selllist, :integer
  end
end
