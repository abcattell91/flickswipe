class CreateUserMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :user_media do |t|
      t.boolean :liked
      t.references :user, null: false, foreign_key: true
      t.references :media, null: false, foreign_key: true

      t.timestamps
    end
  end
end
