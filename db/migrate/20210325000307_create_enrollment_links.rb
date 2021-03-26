class CreateEnrollmentLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :enrollment_links do |t|
      t.string :course_list
      
      t.timestamps
    end
  end
end
