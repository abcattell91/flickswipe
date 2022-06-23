class CreateContentStreamingServices < ActiveRecord::Migration[6.1]
  def change
    create_table :content_streaming_services do |t|
      t.references :streaming_service, null: false, foreign_key: true
      t.references :content, null: false, foreign_key: true
      t.string :content_link

      t.timestamps
    end
  end
end
