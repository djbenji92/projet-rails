class CreateAnnonceurs < ActiveRecord::Migration
  def change
    create_table :annonceurs do |t|
      t.string :email
      t.string :nom
      t.string :prenom
      t.string :password
      t.string :cp
      t.string :adresse
      t.string :telephone
      t.string :situation
      t.string :rayonIntervention

      t.timestamps null: false
    end
  end
end
