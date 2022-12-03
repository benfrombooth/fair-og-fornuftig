class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :journalist_id
      t.string :outlet
      t.integer :user_id
      t.date :publication_date
      t.integer :politician_id

      t.timestamps
    end
  end
end
