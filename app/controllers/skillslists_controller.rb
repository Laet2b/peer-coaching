class SkillslistsController < ApplicationController

    def new
    @skillslist = Skillslist.new
  end

  def create
    @skillslist = Skillslist.new
    @skillslist.user_id = current_user.id
    @skillslist.status = "interested"
    @skillslist.skill_id = params[:skill_id].to_i
    @skillslist.save
    if @skillslist.save
      redirect_to request.referrer + "#card-"
    else
      render 'profile', alert: "Error"
    end
  end

  def edit
    @skillslist = Skillslist.find(params[:id])
  end

  def update
    @skillslist = Skillslist.find(params[:id])
    @skillslist.update(skillslist_params)
    redirect_to profile_path
  end

  def destroy
    @skillslist = Skillslist.find(params[:id])
    @skillslist.destroy
    redirect_to profile_path
  end

  private

  def skillslist_params
    params.require(:skillslist).permit(:skill_id, :user_id, :status)
  end

end
