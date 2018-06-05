class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :email
      t.string :password
      t.text :token

      t.timestamps
    end
  end
end
