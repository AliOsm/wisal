class CreateReports < ActiveRecord::Migration[8.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.integer :age
      t.string :last_known_place
      t.text :characteristics
      t.string :contact

      t.timestamps
    end
  end
end
