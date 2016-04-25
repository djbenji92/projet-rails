class CreateUtilisateurs < ActiveRecord::Migration
  def change
    create_table :utilisateurs do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
