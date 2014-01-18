class UserSkillDetail < ActiveRecord::Base
  belongs_to :user_skill
  belongs_to :skill_detail
end
