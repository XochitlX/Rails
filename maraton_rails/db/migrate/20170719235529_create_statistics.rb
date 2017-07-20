class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.references :round, index: true, foreign_key: true
      t.references :answer, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true
      t.boolean :score

      t.timestamps null: false
    end
  end
end
