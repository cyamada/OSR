class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :professor_id
      t.integer :review_id
      t.string :professor_name
      t.text :content
      t.string :user_ip
      t.string :workload
      t.string :attendance

      t.timestamps
    end
  end
end
