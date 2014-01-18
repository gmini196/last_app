class UserSkillDetail < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill_detail
end
