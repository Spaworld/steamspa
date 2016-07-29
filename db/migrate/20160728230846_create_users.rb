class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :phone
      t.string :email
      t.jsonb :roles, default: {
        'admin':       false,
        'contributor': false,
        'member':      true
      }
      t.timestamps null: false
    end
  end
end