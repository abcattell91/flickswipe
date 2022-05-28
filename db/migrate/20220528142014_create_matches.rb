class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :friendship, null: false, foreign_key: true
      t.references :content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
