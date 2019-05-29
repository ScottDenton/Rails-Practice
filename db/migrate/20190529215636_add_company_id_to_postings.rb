class AddCompanyIdToPostings < ActiveRecord::Migration[5.2]
  def change
    add_column :postings, :company_id, :integer
  end
end
