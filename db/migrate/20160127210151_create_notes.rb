class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.references :subject, index: true, foreign_key: true
      t.references :week, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
