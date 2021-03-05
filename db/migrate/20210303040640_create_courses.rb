class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.boolean :type_of_object
      t.integer :identification
      t.integer :term
      t.integer :code
      t.string :subject
      t.integer :continutiy_id
      t.string :name
      t.text :description
      t.integer :credits
      t.boolean :independent_study
      t.string :requirements

      t.timestamps
    end
  end
end
