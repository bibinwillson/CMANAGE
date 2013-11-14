class ChangeKeyTypeInNodes < ActiveRecord::Migration
  def up
  change_column :nodes ,:key , :binary 
  end

  def down
    change_column :nodes, :key ,:string
  end
end
