class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.string :email
      t.string :github
      t.string :linkedin
      t.string :main_language
      t.integer :years_of_experience
      t.string :cities
      t.timestamps null: false
    end
  end
end
