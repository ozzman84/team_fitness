class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.boolean :certified
      t.integer :years_of_experience

      t.timestamps
    end
  end
end
