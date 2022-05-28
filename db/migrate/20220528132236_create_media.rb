class CreateMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :media do |t|
      t.string :title
      t.text :description
      t.float :rating
      t.string :genre
      t.string :poster
      t.string :media_type
      t.string :streaming_service
      t.integer :duration

      t.timestamps
    end
  end
end
