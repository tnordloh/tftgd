class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.datetime :date_time
      t.timestamps null: false
      t.references :author
    end
  end
end
