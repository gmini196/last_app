class SkillsController < ApplicationController
  def index
    users = User.find params[:user_id]
    @user_skills = users.user_skills
  end

end
