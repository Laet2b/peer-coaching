class OptionsController < ApplicationController

    def new
    @option = Option.new
  end

  def create
    @option = Option.new(option_params)
    @time = Time.new.strftime("%Y-%m-%d")
    @option.save
    if @option.save
      redirect_to request.referrer + "#card-"
    else
      render 'profile', alert: "Error"
    end
  end

  def edit
    @option = Option.find(params[:id])
  end

  def update
    @option = Option.find(params[:id])
    @option.update(option_params)
    redirect_to profile_path
  end

  def destroy
    @option = Option.find(params[:id])
    @option.destroy
    redirect_to profile_path
  end

  private

  def option_params
    params.require(:option).permit(:date, :skill_id, :category, :status, :b_time, :e_time)
  end

end

