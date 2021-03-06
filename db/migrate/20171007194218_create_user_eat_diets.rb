class CreateUserEatDiets < ActiveRecord::Migration[5.1]
  def change
    create_table :user_eat_diets do |t|
      t.date :exp_date
      t.integer :finished
      t.belongs_to :user, unique: true, foreign_key:true
      t.belongs_to :diet, unique: true, foreign_key:true
      t.timestamps
    end
    add_index :user_eat_diets, [:user_id, :diet_id, :exp_date], unique: true
  end
end
