class Updatecolumns < ActiveRecord::Migration[5.1]
  def change
    change_column :members, :first_name, :string, :limit => 255
    change_column :members, :last_name, :string, :limit => 255
    change_column :members, :address, :string, :limit => 255
  end
end
