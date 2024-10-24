class CreateCandidates < ActiveRecord::Migration[7.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.date :birthday
      t.string :identity

      t.timestamps
    end
  end
end
