class AddNameToApplicants < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :name, :string
  end
end
