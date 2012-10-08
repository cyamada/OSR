class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :user_ip
      t.integer :teacher_id

      t.timestamps
    end
  end
end
