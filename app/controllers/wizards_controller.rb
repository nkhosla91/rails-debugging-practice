class WizardsController < ApplicationController

    
  
  def index
    @wizards = Wizard.all
  end

  def show
    @wizard = Wizard.find(params[:id])
  end

  def new
    @wizard = Wizard.new
    @houses = ["Gryffindor", "Hufflepuff", "Slytherin", "Ravenclaw"]
  end 

  def create
    @wizard = Wizard.new(wizard_params)
    @wizard.save
    redirect_to wizards_path
  end


  def edit
    @wizard = Wizard.find(params[:id])
    # byebug
    @houses = ["Gryffindor", "Hufflepuff", "Slytherin", "Ravenclaw"]
  end

  def update
    @wizard = Wizard.find(params[:id])
    @wizard.update(wizard_params)
    redirect_to wizard_path(@wizard.id)
  end

  def destroy
    @wizard = Wizard.find(params[:id])
    @wizard.favorite_spells.destroy_all
    @wizard.destroy
    redirect_to wizards_path
  end


  private

  def wizard_params
    params.require(:wizard).permit(:name, :age, :house, :image)
  end


end
