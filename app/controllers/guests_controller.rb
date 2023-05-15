class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end
  
  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)

    if @message.save
      flash[:success] = 'ご回答ありがとうございました。'
      redirect_to @guest
    else
      flash.now[:danger] = 'エラーが発生しました。'
      render :new
    end
  end

end

  private

  # Strong Parameter
  def guest_params
    params.require(:guest).permit(:name, :address, :email, :attend, :allergy, :message)
  end