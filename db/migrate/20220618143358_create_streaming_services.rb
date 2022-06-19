class CreateStreamingServices < ActiveRecord::Migration[6.1]
  def change
    create_table :streaming_services do |t|
      t.string :full_provider
      t.string :provider
      t.string :icon

      t.timestamps
    end
  end
end
