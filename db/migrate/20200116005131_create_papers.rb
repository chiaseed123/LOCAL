class CreatePapers < ActiveRecord::Migration[6.0]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :author
      t.string :link

      t.timestamps
    end
  end
end
