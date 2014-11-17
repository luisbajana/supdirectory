class ChangeTypeOutsource < ActiveRecord::Migration
  def up
  	remove_column :outsources, :type
  	add_column :outsources, :field, :string
  end

  def down
  end
end
