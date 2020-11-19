class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title, default: ''
      t.string :body, default: ''
      t.integer :order, default: 0
      t.belongs_to :board
      t.timestamps
    end
  end
end
