class CreatePostings < ActiveRecord::Migration[5.2]
  def change
    create_table :postings do |t|
      t.string :image_url
      t.string :logo
      t.string :company
      t.string :location
      t.string :position
      t.text :job_description
      t.timestamps
    end
  end
end
