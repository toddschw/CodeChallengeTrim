class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.string :repoURL
      t.string :projectURL
      t.integer :OOP
      t.integer :modular
      t.integer :stack
      t.integer :db
      t.integer :debugging
      t.integer :problemsolving
      t.integer :javascript
      t.integer :HTML
      t.integer :CSS
      t.integer :team
      t.integer :motivation
      t.integer :communication
      t.integer :energy
      t.integer :intelligence

      t.timestamps null: false
    end
  end
end
