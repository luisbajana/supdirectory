class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.string :description
      t.string :group

      t.timestamps
    end
  end
end
