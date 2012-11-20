class CreateCompaniesUsers < ActiveRecord::Migration
  def up
    create_table :companies_users, :id => false do |t|
      t.integer :company_id
      t.integer :user_id
    end
  end

  def down
    drop_table :companies_users
  end
end
