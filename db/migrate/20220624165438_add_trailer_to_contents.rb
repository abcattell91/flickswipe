class AddTrailerToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :trailer, :string
  end
end
