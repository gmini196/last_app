class DetailSkillsController < ApplicationControllerdef index
    user = User.find params[:user_id]
    @skill_details = user.skill_details.all
    @skills = Skill.all
  end

