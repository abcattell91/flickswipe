class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.float :rating
      t.string :genres, array: true, default: []
      t.string :poster
      t.string :content_type
      t.string :streaming_services, array: true, default: []
      t.integer :duration

      t.timestamps
    end
  end
end
