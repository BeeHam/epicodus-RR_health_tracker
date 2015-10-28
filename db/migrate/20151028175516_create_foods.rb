class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|

      t.column :food_name, :string
      t.column :calories, :integer
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
