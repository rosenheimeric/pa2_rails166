class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :type_of_object
      t.integer :identification
      t.integer :term
      t.string :name
      t.string :abbreviation
      t.string :segments

      t.timestamps
    end
  end
end
