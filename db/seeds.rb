# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Skill.delete_all
SkillDetail.delete_all
UserSkill.delete_all

User.create(name: "dac",email: "dac@framgia.com",
password: "123456", password_confirmation: "123456",)

skills_list = [
  {name: "Ruby"},
  {name: "PHP"},
  {name: "Java"}
]

skills_list.each do |skill|
  Skill.create! skill
end

user_skill_list = [
  {user_id: 1, skill_id: 1},
  {user_id: 2, skill_id: 2},
  {user_id: 3, skill_id: 3},
]

user_skill_list.each do |user_skill|
  UserSkill.create! user_skill
end

user_detail_skills_list = [
  {user_skill_id: 1, skill_detail_id: 1},
  {user_skill_id: 1, skill_detail_id: 2},
  {user_skill_id: 1, skill_detail_id: 3},
  {user_skill_id: 2, skill_detail_id: 5},
  {user_skill_id: 2, skill_detail_id: 4},
  {user_skill_id: 3, skill_detail_id: 6},
  {user_skill_id: 3, skill_detail_id: 8}
]

user_detail_skills_list.each do |user_detail_skill|
  UserSkillDetail.create! user_detail_skill
end

skill_details_list = [
  {skill_id: 1, detail_name: "Beginner",},
  {skill_id: 1, detail_name: "Senior"},
  {skill_id: 1, detail_name: "Junior"},
  {skill_id: 2, detail_name: "Expert"},
  {skill_id: 2, detail_name: "Magento"},
]

skill_details_list.each do |skill_detail|
  SkillDetail.create! skill_detail
end
