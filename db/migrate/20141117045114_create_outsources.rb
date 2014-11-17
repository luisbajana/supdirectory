class CreateOutsources < ActiveRecord::Migration
  def change
    create_table :outsources do |t|
      t.string :name
      t.string :type
      t.string :email
      t.string :phone
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
