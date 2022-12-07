class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :residency_id
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.string :username
      t.integer :industry_id
      t.boolean :permission_name
      t.boolean :permission_photo
      t.boolean :permission_story
      t.boolean :permission_media
      t.integer :municipality_id
      t.string :personal_story
      t.string :photo
      t.string :password

      t.timestamps
    end
  end
end
