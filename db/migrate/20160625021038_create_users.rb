class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :phone
      t.string :email, null: false
      t.jsonb  :roles, default: [
        {'admin':  false },
        {'lead':   true },
        {'author': false }
      ]
      t.timestamps null: false
    end

    add_index :users, [:username, :email, :roles], unique: true

  end
end
