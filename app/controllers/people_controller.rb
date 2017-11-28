class PeopleController < ApplicationController
  def index
    @People = Person.all
  end

  def show
    @Person = Person.find(params[:id])
  end

  def new
    @Person = Person.new

  end

  def create
    @Person = Person.new(person_params)

    if @Person.save
      # success
      redirect_to people_path
    else
      # fail
      render :new
    end
  end

  def edit
    @Person = Person.find(params[:id])
  end

  def update
    @Person = Person.find(params[:id])
    if @Person.update(person_params)
      redirect_to person_path(@Person)
      # Success
    else
      # Fail
      render :edit
    end
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :phone, :hair_color, :eye_color, :gender, :alive)
  end
end
