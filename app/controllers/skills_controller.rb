class SkillsController < ApplicationController

   respond_to :js, :html

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    @skill.status = "suggestion"
    @skill.save!
    redirect_to profile_path(current_user)

  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to profile_path
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :user_id, :status, :description)
  end

end
