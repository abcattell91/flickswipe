class CreateUserContents < ActiveRecord::Migration[6.1]
  def change
    create_table :user_contents do |t|
      t.boolean :liked
      t.references :user, null: false, foreign_key: true
      t.references :content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
