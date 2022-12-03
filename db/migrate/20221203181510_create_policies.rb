class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :description
      t.string :low_sentiment
      t.string :high_sentiment

      t.timestamps
    end
  end
end
