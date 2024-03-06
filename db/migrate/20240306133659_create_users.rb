class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.index :email, unique: true
      t.string :password_digest, null: false
      t.string :full_name, null: false
      t.string :role, null: false

      t.timestamps
    end
  end
end
