class AddGenerationToStartups < ActiveRecord::Migration
  def change
  	add_column :startups, :generation, :integer
  end
end
