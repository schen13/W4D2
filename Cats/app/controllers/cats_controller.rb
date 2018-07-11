class CatsController  < ApplicationController
  
  def index
    @cats = Cat.all
    render :index 
  end
  
  def show
    @cat = Cat.find(params[:id])
    render :show
  end
  
  def new
    @cat = Cat.new
    render :new
  end
  
  def create
    debugger
    @cat = Cat.new(cat_params)
    
    if @cat.save
      redirect_to cat_url(@cat)
    else
      # render json: @cat.errors.full_messages, status: 422
      redirect_to cats_url
    end
  end
  
  def edit
    @cat = Cat.find(params[:id])
    if @cat
      render :edit
    else
      redirect_to cats_url
    end
  end
  
  def update
    @cat = Cat.find(params[:id])
    
    if @cat.update(cat_params)
      redirect_to cat_url(@cat)
    else
      redirect_to cats_url
    end
  end
  
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy if @cat
    redirect_to cats_url
  end
  
  private
  
  def cat_params
    params.require(:cat).permit(:name, :color, :sex, :birth_date, :description)
  end
end




