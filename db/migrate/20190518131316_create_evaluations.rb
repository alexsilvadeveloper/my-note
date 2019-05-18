class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.decimal :note1
      t.decimal :note2
      t.decimal :note3
      t.decimal :note4
      t.references :student, foreign_key: true
      t.references :discipline, foreign_key: true

      t.timestamps
    end
  end
end
