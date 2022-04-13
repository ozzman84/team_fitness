class CreateAthletes < ActiveRecord::Migration[7.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.boolean :previous_coaching
      t.integer :age
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
