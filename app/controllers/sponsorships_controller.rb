class SponsorshipsController < ApplicationController
  def new
    @brand = Brand.find(params[:brand_id])
    @sponsorship = Sponsorship.new
  end

  def create
    @brand = Brand.find(params[:brand_id])
    @sponsorship = Sponsorship.new(sponsorship_params)
    @sponsorship.brand = @brand
    if @sponsorship.save
      redirect_to brand_path(@sponsorship.brand)
    else
      render :new
    end
  end

  def destroy
    @sponsorship = Sponsorship.find(params[:id])
    @sponsorship.destroy
    redirect_to brand_path(@sponsorship.brand)
  end

  private

  def sponsorship_params
    params.require(:sponsorship).permit(:player_id)
  end
end
