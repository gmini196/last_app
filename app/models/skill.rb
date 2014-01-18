class Skill < ActiveRecord::Base
  has_many :skill_details
  has_many :user_skills
  accepts_nested_attributes_for :skill_details, allow_destroy: true
end
