class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :deck, index: true, foreign_key: true
      t.string :text

      t.timestamps null: false
    end
  end
end
