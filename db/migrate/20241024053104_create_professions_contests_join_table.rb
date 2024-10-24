class CreateProfessionsContestsJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :professions, :contests do |t|
      t.index :profession_id
      t.index :contest_id
    end
  end
end
