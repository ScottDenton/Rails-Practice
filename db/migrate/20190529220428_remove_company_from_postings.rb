class RemoveCompanyFromPostings < ActiveRecord::Migration[5.2]
  def change
    remove_column :postings, :company
    remove_column :postings, :logo
    remove_column :postings, :image_url
  end
end
