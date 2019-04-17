class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string "first_name", :limit=> 30
          t.string "last_name", :limit=> 30
          t.string "address", :limit=>30
           t.string "phno", :limit=>10
           t.string "email", :limit=>30
           t.string "postal_code",:limit=>6
           t.string "poll_no", :limit=> 10
           t.string "caption_name", :limit=> 30
           t.string "city",:default=>"Brampton", :limit=>10
      t.timestamps
    end
  end
end
