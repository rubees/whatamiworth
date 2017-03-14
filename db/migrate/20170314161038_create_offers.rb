class CreateOffers < ActiveRecord::Migration[5.0]

  def change
    create_table :offers do |t|
      t.integer :salary_bottom
      t.integer :salary_top
      t.integer :old_salary_bottom
      t.integer :old_salary_top
      t.string :location
      t.string :position
      t.string :work_languages
      t.integer :work_experience
      t.string :work_authorization

      t.timestamps
    end
  end

end
