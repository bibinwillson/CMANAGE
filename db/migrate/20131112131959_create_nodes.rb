class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.binary :ip
      t.string :username
      t.string :password
      t.string :key

      t.timestamps
    end
  end
end
