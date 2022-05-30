class AddImdbIdToContent < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :imdb_id, :integer
  end
end
