class CreateAnonymityLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :anonymity_levels do |t|
      t.string :permission_name
      t.string :permission_photo
      t.string :permission_story
      t.string :permission_media

      t.timestamps
    end
  end
end
