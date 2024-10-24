class CreateContests < ActiveRecord::Migration[7.1]
  def change
    create_table :contests do |t|
      t.string :organ
      t.string :edital
      t.string :code

      t.timestamps
    end
  end
end
