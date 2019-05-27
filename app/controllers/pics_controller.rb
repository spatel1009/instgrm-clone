class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :delete]

  def index
  end

  def show
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to @pic, notice: 'Picture was posted!'
    else
      render 'new'
    end
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :description)
  end

  def set_pic
    @pic = Pic.find(params[:id])
  end
end
