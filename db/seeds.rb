# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#require 'faker'
require 'json'

#clean out data bases
Course.delete_all
Instructor.delete_all
Subject.delete_all

#read in information
course_file = File.read('PA_RAILS_JSON/course.json')
course_data = JSON.parse(course_file)
subject_file = File.read('PA_RAILS_JSON/subject.json')
subject_data = JSON.parse(subject_file)
instructor_file = File.read('PA_RAILS_JSON/instructor.json')
instructor_data = JSON.parse(instructor_file)

subject_data.each do |sub|
    #for testing 
    #random = rand[0...4]
    #name = Faker::Educator.subject
    
    Subject.create(
        name: sub['name'],
        abbreviation: sub['abbreviation'],
        identification: sub['id'],
        term: sub['term'],
        ) 
end

course_data.each do |course|

    Course.create(
      name: course['name'], 
      identification: course['subject'['id']], #terms[rand(0..4)]
      term: course['term'], #terms[rand(0...4)], 
      code: course['code'], #(course_name.object_id.to_i), 
      subject: course['subjects'], #(Faker::Educator.subject),
      credits: course['subjects'['segment']], #credit, 
      continutiy_id: course['continutiy id'], #(course_name.object_id.to_i + course_name.object_id.to_i + credit), 
      requirements: course['requirements'], #nil
      description: course['description'], #(course_name + " " + Faker::Hipster.paragraph), 
      independent_study: course['independent study'], #bool[independent], 
      #type_of_object: true #is_subject(course_name.split(" ")[0].to_s)
  )

end

instructor_data.each do |instructor|
#   first_name = Faker::Name.first_name
#   middle_name = Faker::Name.middle_name
#   last_name = Faker::Name.last_name 
#   id = (first_name.object_id.to_s + " " + middle_name.object_id.to_s + " " + last_name.object_id.to_s)
#   email = (last_name + first_name.split("")[0] + "@pitomail.com")
  
    Instructor.create(
      #type_of_object: true, 
      identification: instructor['id'], 
      email: instructor['email'], #email, 
      first: instructor['first'], #first_name, 
      middle: instructor['middle'], #middle_name, 
      last: instructor['last'], #last_name
      
      )   
end

def subs 
     return Subject.all 
end 

def courses 
    return Course.all 
end 

def instructs 
    return Instructor.all 
end 
