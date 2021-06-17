class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name 
      t.integer :code

      t.timestamps
    end
  end
end
