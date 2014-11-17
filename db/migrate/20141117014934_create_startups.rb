class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :startup_name
      t.string :contact_name
      t.string :email
      t.string :industry
      t.string :tribe
      t.string :country

      t.timestamps
    end
  end
end
