class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.text :body,              null: false
      t.date :matchData,         null: false
      t.string :how,            null: false
      t.string :location        
      t.string :team_a,          null: false
      t.string :team_b,          null: false
      t.integer :score_a        
      t.integer :score_b        
      t.integer :user_id,        null: false, foreign_key: true
      t.integer :category_id,    null: false, foreign_key: true

      t.timestamps
    end
  end
end
