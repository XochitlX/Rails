class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :card, index: true, foreign_key: true
      t.string :option
      t.string :status

      t.timestamps null: false
    end
  end
end
