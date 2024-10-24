class CreateProfessionsCandidatesJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :professions, :candidates do |t|
      t.index :profession_id
      t.index :candidate_id
    end
  end
end
