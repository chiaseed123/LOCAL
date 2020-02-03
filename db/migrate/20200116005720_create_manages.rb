class CreateManages < ActiveRecord::Migration[6.0]
  def change
    create_table :manages do |t|
      t.datetime :deadline
      t.boolean :review_ungraded
      t.boolean :update_graded

      t.timestamps
    end
  end
end
