class CreateWhoYous < ActiveRecord::Migration
  def change
    create_table :who_yous do |t|
t.string :name
      t.timestamps
        end
  end
end
