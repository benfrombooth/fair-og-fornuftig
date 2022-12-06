class CreateStances < ActiveRecord::Migration[6.0]
  def change
    create_table :stances do |t|
      t.integer :policy_id
      t.integer :politician_id
      t.integer :sentiment_score

      t.timestamps
    end
  end
end
