class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :residency_id
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.integer :industry_id
      t.string :permission_name
      t.string :permission_photo
      t.string :permission_story
      t.string :permission_media
      t.integer :municipality_id
      t.string :personal_story
      t.string :photo

      t.timestamps
    end
  end
end
