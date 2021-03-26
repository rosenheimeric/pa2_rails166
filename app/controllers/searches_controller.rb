class SearchesController < ApplicationController
  #before_action :set_search, only: %i[ show edit update destroy ]

  # GET /searches or /searches.json
  def index
    query=params[:search_query]
    selected_subject=params[:selected_subject]
    @courses = Course.search(query, selected_subject)
    @input_subjects = []
    Subject.all.to_a.each do |subs|
        @input_subjects << [subs['name'],  subs['id']]
    end 
  end

  def standby
    query=params[:search_query]
    selected_subject=params[:selected_subject]
    @courses = Course.search(query, selected_subject)
    puts @courses
    @input_subjects = []
    Subject.all.to_a.each do |subs|
        @input_subjects << [subs['name'],  subs['id']]
    end 
  end 

  def search 
    @course = Course.all 
    @subject = Subject.all 
  end 

  def querying 
    course_query = params[:search_text]
    if params[:subject][:subject_id].size.equal(0) then 
      @course = Course.where("lower(name) LIKE ?", "%#{@course_query.downcase}%")
    else 
      @subj = params[:subject][:subject_id]
      @course = Course.join(:subjects).where("lower(courses.name) LIKE ? AND subjects.id = ?", "%#{@course_query.downcase}%", @input)
    end 
    render 'show'
  end 

  def searching 
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Store.all.where("lower(name) LIKE :search", search: @parameter)  
    end    
  end


  # GET /searches/1 or /searches/1.json
 

  
end
