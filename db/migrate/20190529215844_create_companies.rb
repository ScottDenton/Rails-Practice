class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.text :profile
      t.string :logo
      t.string :main_image
      t.timestamps
    end
  end
end
