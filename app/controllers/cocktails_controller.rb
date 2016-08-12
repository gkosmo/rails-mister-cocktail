class CocktailsController < ApplicationController
  before_action :set_cocktail, only:  [:show, :destroy]
  before_action :authorize, only: :new
  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new

  end

  def create
    puts cocktail_params
    @cocktail = Cocktail.create(cocktail_params)
   puts @cocktail.id
    #  if @cocktail.save
        redirect_to @cocktail
    #  else
    #     render 'cocktails/new'
    #  end
  end

  def new
  @cocktail = Cocktail.new
  end
  def destroy
    @cocktail.destroy
    redirect_to '/'
  end
  private


  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
  def cocktail_params
      params.require(:cocktail).permit(:name)
  end
end
