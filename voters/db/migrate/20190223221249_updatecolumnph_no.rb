class UpdatecolumnphNo < ActiveRecord::Migration[5.1]
  def change
    change_column :members, :phno, :string, :limit => 20
  end
end
