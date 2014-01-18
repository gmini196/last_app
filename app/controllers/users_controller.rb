class UsersController < ApplicationController

  def index
    @users = User.paginate page: params[:page], per_page: 2
  end
  def new
    @skills = Skill.all
    @user = User.new
    if params[:skill].nil?
      $list_skill = Array.new
      $enter_value = Hash.new
      Skill.all.each do |skill|
        user_skill = @user.user_skills.build skill_id: skill.id
      end
    else
      skill_form = Skill.find params[:skill]
        Skill.all.each do |skill|
          user_skill = @user.user_skills.build skill_id: skill.id
          skill.skill_details.each do |detail|
              user_skill.user_skill_details.build skill_detail_id: detail.id
            end
        end
      render partial: "form"
    end
  end

	def create
		@user = User.new user_params
    if @user.save
      flash[:success] = "Add user success"
      redirect_to users_path
    else
      flash.now[:error] = "Failed to add user"
      @skills = Skill.all
		  @user = User.new
		  Skill.all.each do |skill|
		    user_skill = @user.user_skills.build skill_id: skill.id
		    skill.skill_details.each do |detail|
          user_skill.user_skill_details.build skill_detail_id: detail.id
		    end
		  end
      render "new"
    end
	end

  private
	  def user_params
	    params.require(:user).permit :name, :password,
	      :password_confirmation, :email,
	      user_skills_attributes: [:skill_id,
	       user_skill_details_attributes: [:skill_detail_id, :level]]
	  end
end
