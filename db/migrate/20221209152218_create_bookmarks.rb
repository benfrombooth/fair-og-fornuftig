class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.integer :member_id
      t.integer :politician_id

      t.timestamps
    end
  end
end
