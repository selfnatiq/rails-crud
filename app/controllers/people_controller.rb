class PeopleController < ApplicationController
  def index
    @people = Person.all
    # People age average
    @age_avg_people = @people.inject(0.0) { |sum, el| sum + el.age } / @people.size
    
    @groups = Group.all
  end

  def new
    @person = Person.new
    @groups = Group.all
  end

  def edit
    @person = Person.find(params[:id])
    @groups = Group.all
  end

  def create
    person = Person.new(person_params)
    redirect_to people_index_path if person.save
  end 

  def update
    person = Person.find(params[:id])
    redirect_to people_index_path if person.update(person_params)
  end

  def destroy
    person = Person.find(params[:id])
    redirect_to people_index_path if person.destroy
  end

  private
  def person_params
    params.require("person").permit(:group_id, :name, :firstname, :email, :age, :sex, :des1, :des2, :des3)
  end
end
