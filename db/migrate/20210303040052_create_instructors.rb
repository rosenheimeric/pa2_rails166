class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.boolean   :type_of_object
      t.integer   :identification
      t.string    :email
      t.string    :first
      t.string    :middle
      t.string    :last

      t.timestamps
    end
  end
end
