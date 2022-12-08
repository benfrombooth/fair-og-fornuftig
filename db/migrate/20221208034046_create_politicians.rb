class CreatePoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :politicians do |t|
      t.integer :district_id
      t.string :party
      t.string :name
      t.string :photo
      t.string :spokesperson
      t.integer :status_id
      t.string :priority
      t.string :total_sentiment_score

      t.timestamps
    end
  end
end
