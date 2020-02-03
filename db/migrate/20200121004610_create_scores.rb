class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :paper_id
      t.integer :feasibility
      t.integer :novelty
      t.integer :significance
      t.integer :quality
      t.text :comment

      t.timestamps
    end
  end
end
