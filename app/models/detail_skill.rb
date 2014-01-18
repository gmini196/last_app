class DetailSkill < ActiveRecord::Base
   has_many :user_skills
  has_many :user, through: :user_skills
  belongs_to :skill
end
