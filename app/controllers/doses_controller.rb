class DosesController < ApplicationController
  before_action :set_dose, only: [ :destroy]
  before_action :set_cocktail, only: [:create, :destroy]
  def create
     dose =   Dose.new(dose_params)
     dose[:cocktail_id] = @cocktail.id
     dose.save
    redirect_to @cocktail
  end

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def destroy
    @dose.destroy
    redirect_to @cocktail
  end

private
  def set_dose
    @dose = Dose.find(params[:id])
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
  def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
  end


end
