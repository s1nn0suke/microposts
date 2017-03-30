class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false
      t.index :email, unique: true
      t.index [:user_id, :created_at]
    end
  end
end
