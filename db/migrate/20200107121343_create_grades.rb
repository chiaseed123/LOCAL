class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.boolean :status
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
