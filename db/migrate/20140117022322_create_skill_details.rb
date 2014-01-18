class CreateSkillDetails < ActiveRecord::Migration
  def change
    create_table :skill_details do |t|
      t.integer  "skill_id"
      t.string   "detail_name"
      t.timestamps
    end
  end
end
