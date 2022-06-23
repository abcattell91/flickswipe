class ChangeStreamingservicesToWatchProviders < ActiveRecord::Migration[6.1]
  def change
    rename_column :contents, :streaming_services, :watch_providers
  end
end
