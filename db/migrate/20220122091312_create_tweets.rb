class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      
      t.integer "customer_id"
      t.string "tweet_image_id"
      t.string "title"
      t.text "body"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      
      t.timestamps
    end
  end
end
